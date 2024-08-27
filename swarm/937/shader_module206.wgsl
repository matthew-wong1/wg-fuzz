struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: Struct_2 = Struct_2(vec3<f32>(399f, -597f, -1901f), vec2<f32>(-648f, 529f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    return !(!select(vec4<bool>(true, true | global1.x, false, false || global1.x), select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, false, true, global1.x), any(vec2<bool>(false, false))), select(vec4<bool>(global1.x, global1.x, global1.x, true), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, true, true, false)), vec4<bool>(global1.x, global1.x, global1.x, true))));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_5(u_input.c);
    let var_1 = all(select(select(!vec4<bool>(true, false, global1.x, true), select(func_3(Struct_4(Struct_2(global2.a, global2.a.xx))), select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, true, global1.x, false), global1.x), true), !select(vec4<bool>(global1.x, true, false, true), vec4<bool>(false, global1.x, global1.x, global1.x), global1.x)), !(!select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, false, true, global1.x))), func_3(Struct_4(Struct_2(vec3<f32>(-678f, global2.b.x, global2.a.x), vec2<f32>(global2.a.x, 475f))))));
    return ~(~(~vec2<u32>(1u, ~global0.x)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = 39030u;
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(var_0), 0u), vec2<u32>(u_input.e.x, 1u)), _wgslsmith_mult_vec2_u32(~func_2(), u_input.e));
    let var_2 = 12454i;
    var var_3 = vec3<u32>(global0.x ^ ~3644u, var_0, 16171u ^ _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(global0.yx, vec2<u32>(global0.x, arg_2.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(46665u, 0u), var_1.x)));
    global1 = vec4<bool>(any(!vec3<bool>(true, all(global1.zzw), global1.x)), !global1.x, all(!select(vec3<bool>(true, global1.x, true), global1.xwz, true)), !(!(u_input.d.x <= u_input.c) && false));
    return vec4<u32>(global0.x, _wgslsmith_add_u32(1u, ~_wgslsmith_mod_u32(arg_2.x, 73992u)), max(func_2().x, 4294967295u), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x >> (u_input.a % 32u), ~90421u, ~0u, (max(10041u, 0u) << (firstLeadingBit(57947u) % 32u)) >> (firstLeadingBit(1u) % 32u)), func_1(-491f, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, 1000f, 1497f, global2.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(363f, global2.b.x, global2.b.x, global2.b.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2002f, -393f, global2.a.x, 400f), vec4<f32>(648f, -593f, 653f, -1895f))))), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(8227u, global0.x, 0u, 22940u), vec4<u32>(u_input.a, global0.x, global0.x, 28768u)) >> (~vec4<u32>(18108u, 0u, 31619u, 65271u) % vec4<u32>(32u))), global2.b));
    global0 = _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(max(vec4<u32>(global0.x, u_input.a, 32832u, 62869u), select(vec4<u32>(u_input.a, u_input.e.x, 64679u, 59772u), vec4<u32>(1u, global0.x, global0.x, 0u), vec4<bool>(global1.x, global1.x, true, global1.x))), vec4<u32>(21302u, 11549u, u_input.e.x, global0.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, global0.x, global0.x, global0.x), vec4<u32>(u_input.e.x, 15150u, global0.x, u_input.e.x)))), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global0.x, ~u_input.e.x, 1u, firstLeadingBit(global0.x))), vec4<u32>(global0.x, ~(~0u), 1u, ~(~u_input.e.x))));
    var var_0 = Struct_1(vec3<f32>(1475f, global2.a.x, global2.a.x), global0.xzx);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(global2.a)), _wgslsmith_mult_vec3_u32(var_0.b, global0.wyw));
    var var_2 = Struct_4(Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(floor(var_0.a.zx))));
    var var_3 = ~vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.c) ^ u_input.c) ^ u_input.b.yw;
    var_0 = Struct_1(var_2.a.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(31275u, var_0.b.x, 1u) >> (global0.x % 32u), ~_wgslsmith_mod_u32(var_1.b.x, var_1.b.x), 4294967295u), func_1(-814f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(146f, -1000f, var_2.a.a.x, 836f))), func_1(var_2.a.b.x, vec4<f32>(var_1.a.x, var_2.a.b.x, 325f, global2.a.x), vec4<u32>(5836u, 32187u, u_input.a, global0.x), vec2<f32>(var_2.a.b.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(min(var_0.a.xz, var_0.a.xz))).wxw | vec3<u32>(func_1(189f, vec4<f32>(var_1.a.x, var_2.a.a.x, var_0.a.x, -884f), vec4<u32>(u_input.a, var_1.b.x, 4294967295u, 1u), vec2<f32>(global2.a.x, var_0.a.x)).x, firstLeadingBit(14455u), _wgslsmith_div_u32(u_input.e.x, 11338u)), var_1.b));
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-248f, -1068f, 1290f)))) - var_2.a.a), var_2.a.a.zx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(74482u, _wgslsmith_div_u32(func_2().x, countOneBits(abs(var_0.b.x))), countOneBits(~_wgslsmith_dot_vec2_u32(global0.zw, u_input.e)), ~firstTrailingBit(45073u)));
}

