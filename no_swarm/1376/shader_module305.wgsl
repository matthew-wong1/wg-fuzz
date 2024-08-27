struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: vec2<u32> = vec2<u32>(35507u, 0u);

var<private> global2: Struct_4 = Struct_4(1u, vec4<u32>(0u, 44025u, 34943u, 56092u), 49109u, -64881i, vec2<i32>(-39384i, i32(-2147483648)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(true), !vec4<bool>(true, true, true, all(vec3<bool>(false, true, false))));
    global0 = array<i32, 29>();
    var var_1 = global1.x;
    var_1 = ~(min(global2.c, ~43452u) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~global2.b.xy, ~vec2<u32>(global1.x, 59021u)), global2.b.zw));
    global2 = Struct_4(19905u, ~vec4<u32>(abs(~21278u), global1.x, arg_1, firstLeadingBit(27207u)), arg_1, select(global2.e.x, 0i, false), global2.e);
    return var_0.b.zzz;
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = array<i32, 29>();
    var var_0 = Struct_2(~arg_0.b, Struct_1(any(select(vec3<bool>(true, true, true), func_3(11901i, arg_0.a), true))), all(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), true), vec2<bool>(-1i == arg_0.d, true), any(vec3<bool>(true, true, true)))));
    var var_1 = Struct_3(Struct_1(all(select(vec2<bool>(false, var_0.b.a), vec2<bool>(false, var_0.b.a), select(vec2<bool>(true, false), vec2<bool>(false, true), var_0.c)))), select(vec4<bool>(!var_0.c, true, select(all(vec4<bool>(var_0.c, var_0.b.a, false, true)), true, all(vec3<bool>(true, var_0.b.a, true))), var_0.c), !vec4<bool>(false, true, !var_0.c, func_3(-60894i, arg_0.c).x), select(!select(vec4<bool>(var_0.c, var_0.b.a, var_0.c, var_0.c), vec4<bool>(var_0.b.a, true, var_0.c, false), true), !(!vec4<bool>(var_0.b.a, var_0.c, var_0.c, var_0.c)), select(vec4<bool>(false, false, var_0.b.a, true), !vec4<bool>(false, true, var_0.b.a, var_0.b.a), var_0.b.a))));
    let var_2 = Struct_3(Struct_1(var_0.b.a), !select(!select(vec4<bool>(var_0.b.a, var_1.b.x, true, false), vec4<bool>(true, var_0.b.a, var_0.b.a, var_1.a.a), var_1.b), var_1.b, !all(vec2<bool>(var_1.a.a, var_0.c))));
    var var_3 = select(!(!vec3<bool>(false, all(vec2<bool>(var_0.b.a, false)), var_2.a.a)), var_2.b.yzz, all(vec3<bool>(var_2.b.x, all(func_3(39851i, 4294967295u)), any(!var_1.b.ww))));
    return reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(~arg_0.a, global2.a << (0u % 32u)) ^ ~1u, 4294967295u));
}

fn func_1() -> i32 {
    global2 = Struct_4(1u, vec4<u32>(~global1.x, _wgslsmith_clamp_u32(firstLeadingBit(global2.c | global1.x), 4294967295u, global2.c), (~global1.x | 1u) << (~_wgslsmith_add_u32(global2.b.x, global2.c) % 32u), global2.a), func_2(Struct_4(global1.x, global2.b, 1u, global2.e.x, u_input.a)), global2.e.x, countOneBits(-u_input.a));
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-646f, _wgslsmith_f_op_f32(step(124f, _wgslsmith_div_f32(1000f, 1f))), -340f, _wgslsmith_f_op_f32(f32(-1f) * -1131f)));
    var_0 = select(1i, abs(max(1i, global2.d)), true) | reverseBits(global0[_wgslsmith_index_u32(~select(~global2.a, 15349u, true), 29u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.wz)) - _wgslsmith_f_op_vec2_f32(trunc(var_1.zx)))))));
    return -14898i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(4294967295u, ~(~vec4<u32>(global2.a & 37711u, _wgslsmith_dot_vec2_u32(global2.b.xz, vec2<u32>(global2.c, global2.a)), global1.x, ~4294967295u)), max(global2.b.x >> (((global1.x << (7744u % 32u)) | min(0u, 16564u)) % 32u), ~(global2.c >> (1u % 32u))), u_input.a.x, -(vec2<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global1.x, 29u)], 44183i), firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 29u)])) << (_wgslsmith_div_vec2_u32(global2.b.wy, abs(vec2<u32>(59527u, 0u))) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_mult_i32(19114i, -50490i);
    global0 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(~(-18807i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a & global2.e, _wgslsmith_sub_vec2_i32(vec2<i32>(var_1, var_1), global2.e)), _wgslsmith_mod_i32(i32(-1i) * -15738i, -5092i)), _wgslsmith_mult_i32(-(i32(-1i) * -16442i), u_input.a.x), global0[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_mod_i32(func_1(), 10472i), _wgslsmith_mod_u32(min(_wgslsmith_add_u32(abs(global1.x), global2.a), 12566u ^ var_0.a), ~28920u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1837f, 1567f, 581f, 100f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 804f, 1219f, -151f)), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, 1466f, 143f, -1072f) * vec4<f32>(246f, -1914f, 449f, -1102f))))), var_0.b.x >> (var_0.c % 32u));
}

