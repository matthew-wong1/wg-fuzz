struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.a.wzy);
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(~(~u_input.c), -((u_input.d.x | u_input.d.x) << (1u % 32u))), ~(~u_input.c));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-448f)))) * var_0.x);
    var_2 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(arg_2.a.x - -465f));
    var_2 = _wgslsmith_f_op_f32(round(1000f));
    return vec2<bool>(arg_2.a.x >= var_0.x, all(select(vec4<bool>(true, true, arg_0, all(vec2<bool>(false, false))), !(!vec4<bool>(arg_0, arg_0, arg_0, true)), 83413u > (arg_1.x ^ u_input.b))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> bool {
    return _wgslsmith_sub_i32(arg_0.x ^ abs(0i), 55791i) != (_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.c, -17582i) & vec2<i32>(-2147483647i, 23483i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(38658i, -1i, -11999i, 11105i), vec4<i32>(2147483647i, arg_0.x, u_input.c, u_input.c)), arg_0.x >> (22703u % 32u))) ^ ~1i);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = func_1((arg_0.c >= u_input.c) || !any(!vec3<bool>(false, arg_0.d, true)), _wgslsmith_mod_vec4_u32(firstLeadingBit(select(vec4<u32>(arg_0.e, 1u, 9295u, arg_0.a.x), abs(u_input.a), select(vec4<bool>(arg_0.d, true, arg_0.d, false), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, false), arg_0.d))), u_input.a), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(117f, 483f, arg_0.b, arg_0.b) * vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -537f)) - vec4<f32>(366f, arg_0.b, 1543f, -792f)))));
    var var_1 = u_input.b;
    let var_2 = 832f;
    var_1 = arg_0.a.x;
    var var_3 = vec2<i32>(~(i32(-1i) * -1i), -34185i);
    return ~arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, true);
    var_0 = !select(func_1(true, u_input.a, Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1053f, -1000f, -1827f, 1231f))))), vec2<bool>((var_0.x | true) == (2147483647i >= u_input.d.x), func_2(vec2<i32>(-1i, 968i), ~u_input.a.x)), func_1(true, vec4<u32>(_wgslsmith_div_u32(12544u, u_input.b), func_3(Struct_1(u_input.a.xz, 577f, u_input.c, false, u_input.b), u_input.a.yw), 17364u, 0u), Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(273f, 921f, -142f, 890f), vec4<f32>(529f, 462f, -1779f, -1501f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f)) * 1181f);
    var var_2 = select(!select(!(!vec4<bool>(true, var_0.x, true, var_0.x)), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true, true, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true), !vec4<bool>(false, true, var_0.x, false))), select(!vec4<bool>(!var_0.x, false, !var_0.x, !var_0.x), !select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), true), true);
    var_2 = !select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, var_2.x), vec4<bool>(true, false, true, false))), select(select(select(vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(var_2.x, var_2.x, false, var_2.x), false), select(vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_2.x, false, var_2.x)), select(vec4<bool>(true, true, var_2.x, false), vec4<bool>(var_2.x, true, false, false), false)), vec4<bool>(select(var_2.x, var_2.x, var_0.x), var_0.x, var_2.x & false, var_2.x), !vec4<bool>(false, var_0.x, var_2.x, var_0.x)), false);
    let var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(abs(u_input.b), 1u)), _wgslsmith_add_vec2_u32(u_input.a.wz, u_input.a.xx), u_input.a.yx), -277f, max(firstTrailingBit(~(-2147483647i)) ^ (_wgslsmith_sub_i32(u_input.d.x, 2147483647i) & 1i), min(_wgslsmith_mod_i32(-2147483647i, 3882i), ~u_input.d.x) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, -42483i, 1i), vec4<i32>(u_input.c, -2147483647i, 11214i, 2147483647i))), all(select(func_1(true, abs(u_input.a), Struct_2(vec4<f32>(416f, 140f, 235f, 1075f))), var_2.zx, false)), 23601u & ~(~_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 49801u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_3.b * -3268f), 292f), vec3<f32>(-792f, -1557f, 388f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.b, var_3.b, -226f))))))));
    let var_5 = 53052u << (0u % 32u);
    var var_6 = select(vec2<bool>(4294967295u > _wgslsmith_dot_vec3_u32(vec3<u32>(var_5, u_input.b, 1u), u_input.a.wxy), select(var_3.d, true, !(var_2.x || false))), select(!func_1(true, abs(vec4<u32>(57676u, u_input.a.x, var_3.e, var_3.a.x)), Struct_2(vec4<f32>(var_4.x, -1008f, var_4.x, var_4.x))), select(var_2.xx, select(vec2<bool>(var_2.x, false), !vec2<bool>(var_2.x, var_3.d), func_2(vec2<i32>(33132i, 17698i), u_input.b)), var_2.xx), true), select(var_2.x, true, any(select(var_2.yz, vec2<bool>(true, var_0.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(select(u_input.a.zww, vec3<u32>(var_5, 1u, var_3.a.x), vec3<bool>(true, true, true)), firstLeadingBit(u_input.a.zzx)), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-1i, var_3.c, u_input.d.x)) << (u_input.a.xyw % vec3<u32>(32u)), vec3<i32>(u_input.d.x, u_input.c >> (u_input.a.x % 32u), _wgslsmith_add_i32(var_3.c, -2147483647i)) & _wgslsmith_add_vec3_i32(vec3<i32>(28271i, var_3.c, -2147483647i), max(vec3<i32>(-4164i, var_3.c, -47188i), vec3<i32>(var_3.c, var_3.c, 17605i)))));
}

