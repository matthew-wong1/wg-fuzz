struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global0 = array<vec4<u32>, 14>();
    global0 = array<vec4<u32>, 14>();
    let var_0 = ~(~_wgslsmith_dot_vec2_i32(u_input.c.yw, u_input.c.yx));
    var var_1 = ~(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 21023u) | reverseBits(28100u), u_input.a.x) << (~(_wgslsmith_sub_vec2_u32(u_input.a.zx, vec2<u32>(52117u, 4294967295u)) & vec2<u32>(13704u, 4443u)) % vec2<u32>(32u)));
    let var_2 = 4294967295u;
    return Struct_2(Struct_1(vec2<f32>(-423f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f))), ~vec2<i32>(~u_input.d, ~u_input.c.x), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, select(vec4<i32>(-48107i, u_input.c.x, u_input.c.x, var_0), u_input.c, arg_0.x)), u_input.c), vec4<u32>(_wgslsmith_sub_u32(var_2, var_1.x) ^ reverseBits(u_input.a.x), 1u, ~31327u, u_input.a.x << (_wgslsmith_sub_u32(var_2, 1u) % 32u))), u_input.c.yy);
}

fn func_3() -> vec2<u32> {
    global0 = array<vec4<u32>, 14>();
    global0 = array<vec4<u32>, 14>();
    global0 = array<vec4<u32>, 14>();
    var var_0 = _wgslsmith_mod_u32(~firstTrailingBit(1u), u_input.a.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(2416f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)))))), _wgslsmith_f_op_f32(-442f * -322f));
    return reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.xz >> (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), abs(u_input.a.yx) << (u_input.a.xx % vec2<u32>(32u))), u_input.a.x));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = func_2(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)) == -861f, !(4294967295u >= arg_0.c.d.x) && any(vec4<bool>(false, false, arg_1, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(arg_0.c.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.a.x, -264f)))))))));
    let var_2 = Struct_2(func_2(!select(!vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), true)).a, vec2<i32>(0i, -3915i));
    var var_3 = func_3();
    var var_4 = arg_0;
    return Struct_2(var_4.c, vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_2.b.x, 1i, -1i, var_4.b.x), max(u_input.c, u_input.c), vec4<bool>(true, arg_0.a, true, arg_0.a)), vec4<i32>(-1i) * -var_4.c.c), 1i));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, arg_1.a.a.x, -1791f)))))));
    var var_1 = u_input.a << (~vec3<u32>(func_1(Struct_3(true, u_input.c, arg_1.a), false, Struct_2(Struct_1(vec2<f32>(arg_1.a.a.x, 965f), u_input.c.ww, vec4<i32>(-2147483647i, arg_1.b.x, 2147483647i, arg_1.b.x), vec4<u32>(arg_0, 0u, 680u, u_input.a.x)), vec2<i32>(18208i, -47630i)), vec2<i32>(54668i, -23058i)).a.d.x >> (~1u % 32u), 11471u, ~(~1u)) % vec3<u32>(32u));
    var var_2 = func_2(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec4<bool>(true, true, false, true)) || select(false, true, true)));
    var var_3 = ~(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.c.x), firstTrailingBit(u_input.c.wxy))));
    let var_4 = arg_1;
    return var_2.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-u_input.c.wz ^ u_input.c.ww, u_input.c.yx);
    var var_1 = var_0.x;
    var var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(857f, _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-1304f - 113f)), u_input.c.xx, -vec4<i32>(5608i, -28957i, var_0.x, var_0.x) & func_4(~u_input.a.x, func_1(Struct_3(false, vec4<i32>(14419i, -2147483647i, 39042i, 2583i), Struct_1(vec2<f32>(-1451f, 844f), vec2<i32>(-1i, u_input.c.x), u_input.c, vec4<u32>(2391u, u_input.a.x, u_input.a.x, 4294967295u))), false, Struct_2(Struct_1(vec2<f32>(1000f, 336f), u_input.c.yx, u_input.c, global0[_wgslsmith_index_u32(2088u, 14u)]), u_input.c.xx), u_input.c.zz)), _wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 54748u), max(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)])), ~(global0[_wgslsmith_index_u32(u_input.a.x, 14u)] >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))), ~(abs(vec2<i32>(1i, 25017i)) >> (func_3() % vec2<u32>(32u))));
    global0 = array<vec4<u32>, 14>();
    let var_3 = select(vec2<bool>(true, true | all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(true, all(vec3<bool>(false, true, true)))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(all(vec3<bool>(true, true, false)), true), any(vec2<bool>(true, true))), all(vec2<bool>(true, true))), !(!vec2<bool>(true, any(vec3<bool>(false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(55757i);
}

