struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 14>;

var<private> global2: bool = true;

var<private> global3: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(min(abs(~(~13068u)), reverseBits(4294967295u)), vec2<i32>(11845i, -14917i), vec3<bool>(all(vec3<bool>(true, true, true)), false, true));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(467f * -251f), !var_0.c.x))))));
    global3 = false;
    let var_2 = firstLeadingBit(~select(~vec2<u32>(1859u, var_0.a), vec2<u32>(13354u, 10601u), false) << (vec2<u32>(1u, abs(min(var_0.a, var_0.a))) % vec2<u32>(32u)));
    var_0 = Struct_1(_wgslsmith_div_u32(select(_wgslsmith_dot_vec2_u32(var_2, vec2<u32>(var_2.x, var_0.a)), var_2.x, true), _wgslsmith_clamp_u32(1u, ~0u, var_0.a & 0u)) >> (firstLeadingBit(var_2.x) % 32u), vec2<i32>(u_input.a, -2147483647i), var_0.c);
    return true;
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = ~vec3<u32>(29502u, 1u, 1u);
    var var_1 = Struct_1(_wgslsmith_sub_u32(4294967295u, var_0.x), (~(~vec2<i32>(-1267i, 0i)) | vec2<i32>(~u_input.c, u_input.d.x)) >> (~var_0.zx % vec2<u32>(32u)), select(!(!(!vec3<bool>(arg_0, true, arg_0))), !vec3<bool>(!arg_0, arg_0, !arg_0), false));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) - _wgslsmith_f_op_f32(floor(351f)));
    var_2 = all(!(!vec3<bool>(func_3(0i), select(arg_0, false, true), false)));
    return max(~(~min(_wgslsmith_add_vec2_u32(var_0.yz, var_0.yz), vec2<u32>(var_1.a, var_0.x))), ~(~var_0.xx | _wgslsmith_mod_vec2_u32(firstLeadingBit(var_0.xx), var_0.yy)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(arg_1.a, arg_0.a)), ~func_2(arg_0.c.x)), 1u), vec2<u32>(1u, ~_wgslsmith_mod_u32(arg_1.a << (108539u % 32u), 4294967295u | arg_0.a)), abs(firstTrailingBit(vec2<u32>(0u, ~32861u))));
    global0 = 754f;
    global3 = all(select(vec2<bool>(!arg_1.c.x, false), !vec2<bool>(true, any(arg_1.c.yx)), vec2<bool>(arg_0.c.x, true)));
    var var_1 = arg_0;
    var var_2 = true;
    return arg_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> u32 {
    let var_0 = false;
    var var_1 = 0u;
    var var_2 = arg_3;
    var var_3 = Struct_3(select(func_2(var_0).x, 1u, true), ~(~1u ^ abs(select(arg_3, 32966u, true))), all(func_1(arg_1, Struct_1(firstTrailingBit(1u), arg_1.b, select(vec3<bool>(var_0, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.c.x))).c), Struct_2(arg_1.a, func_1(arg_1, arg_1), arg_0), Struct_2(19913u, Struct_1(1u, u_input.d, !arg_1.c), ~arg_0));
    var var_4 = 1000f;
    return arg_3 | _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1.a, min(arg_3 << (20078u % 32u), ~arg_1.a)), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_div_vec4_u32(vec4<u32>(min(~34289u, ~0u), 1u, 19878u, ~1u), vec4<u32>(1u, 4294967295u, func_4(~vec3<i32>(0i, global1[_wgslsmith_index_u32(1u, 14u)], u_input.d.x), func_1(Struct_1(32054u, vec2<i32>(-4282i, 0i), vec3<bool>(false, false, false)), Struct_1(4294967295u, vec2<i32>(-62192i, u_input.b), vec3<bool>(true, false, true))), ~global1[_wgslsmith_index_u32(4294967295u, 14u)], 1u), max(98487u, 1u))), abs(~countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), true && (!all(vec3<bool>(false, true, true)) || true));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_2(11517u, Struct_1(39275u, ~(~(-u_input.d)), !func_1(func_1(Struct_1(0u, u_input.d, vec3<bool>(var_1.x, true, false)), Struct_1(var_0.x, u_input.d, vec3<bool>(false, true, var_1.x))), func_1(Struct_1(var_0.x, vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 14u)], 18991i), vec3<bool>(var_1.x, var_1.x, false)), Struct_1(var_0.x, u_input.d, vec3<bool>(false, true, var_1.x)))).c), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -46162i, -34589i)), vec3<i32>(u_input.a, u_input.a, 2147483647i)) >> (vec3<u32>(var_0.x, 57650u, 21519u) % vec3<u32>(32u)), -(~min(vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(var_0.x, 14u)], u_input.a), vec3<i32>(0i, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(32894u, 14u)])))));
    var var_3 = func_1(var_2.b, var_2.b);
    var_3 = Struct_1(var_2.b.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -firstLeadingBit(global1[_wgslsmith_index_u32(var_0.x, 14u)])), var_2.b.b | firstLeadingBit(~var_3.b), abs(var_2.c.zy)), !vec3<bool>(!(!var_1.x), var_2.b.c.x, any(!vec4<bool>(var_2.b.c.x, var_2.b.c.x, false, false))));
    var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, 251f, 1835f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, -345f, 229f))))), func_1(Struct_1(~_wgslsmith_sub_u32(var_0.x, 0u), _wgslsmith_mult_vec2_i32(select(var_3.b, u_input.d, false), _wgslsmith_div_vec2_i32(var_2.c.xz, u_input.d)), vec3<bool>(false, var_1.x, var_3.a < 10640u)), var_2.b).a);
}

