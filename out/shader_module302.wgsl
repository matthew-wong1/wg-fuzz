struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 26> = array<bool, 26>(false, true, true, false, true, true, true, true, true, false, false, false, true, false, false, true, false, false, false, true, true, false, true, false, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> vec2<u32> {
    return u_input.a.wx;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    global1 = !vec2<bool>(global1.x, !(!global1.x));
    global2 = array<bool, 26>();
    let var_0 = ~func_2(~(~87453u), ~u_input.a.x ^ (108803u >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -885f, arg_0.b.x, -1138f))))) | (vec2<u32>(abs(~u_input.a.x), ~u_input.a.x) >> (_wgslsmith_div_vec2_u32(u_input.a.xz, func_2(0u, arg_0.c.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b.x, -619f, -240f, -1044f))))) % vec2<u32>(32u)));
    var var_1 = Struct_1(reverseBits(-reverseBits(arg_0.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.x, -350f))) + arg_0.b), arg_0.b), _wgslsmith_mult_vec3_u32(u_input.a.xxy, u_input.a.yxx), ~_wgslsmith_mult_vec4_i32(-(vec4<i32>(2147483647i, arg_1.x, -3621i, arg_0.a.x) & vec4<i32>(-18006i, arg_0.d.x, arg_0.d.x, arg_0.a.x)), vec4<i32>(~(-71038i), select(arg_0.d.x, arg_1.x, global1.x), arg_0.a.x >> (1u % 32u), -2147483647i)), !(!arg_0.e));
    let var_2 = ~u_input.a.x;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global0 = arg_1.e.x;
    var var_0 = Struct_1(_wgslsmith_mod_vec2_i32(~arg_0.a << ((vec2<u32>(arg_0.c.x, 137406u) | (arg_1.c.xx >> (arg_0.c.xy % vec2<u32>(32u)))) % vec2<u32>(32u)), arg_0.a), arg_1.b, vec3<u32>(u_input.a.x, arg_1.c.x, 1u), arg_0.d, arg_1.e);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, arg_0.b.x)), _wgslsmith_div_vec2_f32(arg_1.b, arg_1.b)) + vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(812f, var_0.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 2758f))))));
    var_0 = arg_0;
    var_0 = Struct_1(var_0.a, var_0.b, ~_wgslsmith_clamp_vec3_u32(~(vec3<u32>(19756u, arg_1.c.x, u_input.a.x) >> (arg_0.c % vec3<u32>(32u))), ~u_input.a.xyw, select(var_0.c, vec3<u32>(arg_1.c.x, 0u, 4294967295u), vec3<bool>(arg_1.e.x, var_0.e.x, global2[_wgslsmith_index_u32(22222u, 26u)]))), vec4<i32>(_wgslsmith_sub_i32(1i, 1i | min(12590i, arg_1.a.x)), ~var_0.d.x, (arg_0.d.x & arg_0.d.x) << (arg_1.c.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i | arg_0.a.x, arg_0.d.x), vec2<i32>(countOneBits(24673i), 5826i >> (u_input.a.x % 32u)))), var_0.e);
    return arg_0.c.x ^ firstLeadingBit(func_1(Struct_1(-vec2<i32>(-12678i, -2147483647i), _wgslsmith_f_op_vec2_f32(-arg_1.b), arg_0.c & arg_1.c, ~arg_0.d, func_1(Struct_1(arg_0.a, arg_1.b, arg_0.c, arg_1.d, arg_1.e), vec4<i32>(39732i, -60585i, -1i, -2147483647i)).e), var_0.d).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-752f, _wgslsmith_f_op_f32(2160f - _wgslsmith_f_op_f32(f32(-1f) * -490f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(881f, 2362f, -1909f) - vec3<f32>(569f, -467f, 954f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    global2 = array<bool, 26>();
    var var_1 = ~(-vec4<i32>(1i, 1i, 1i, 1i));
    global0 = false;
    var var_2 = select(vec2<u32>(12853u, func_3(func_1(Struct_1(var_1.wy, var_0.yy, u_input.a.yyx, vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x), vec4<bool>(false, global1.x, true, false)), vec4<i32>(83947i, var_1.x, var_1.x, -23281i)), Struct_1(var_1.zx, var_0.xy, vec3<u32>(u_input.a.x, 21413u, 11150u), vec4<i32>(var_1.x, 21508i, var_1.x, -37013i), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global1.x, true)))), reverseBits(abs(vec2<u32>(47716u, 0u))), select(!(!vec2<bool>(global1.x, true)), !select(vec2<bool>(true, true), vec2<bool>(false, global1.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], false)), !(u_input.a.x <= u_input.a.x))) & u_input.a.xx;
    let var_3 = -(func_1(func_1(Struct_1(var_1.wz, vec2<f32>(347f, 187f), u_input.a.wzw, vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x), vec4<bool>(true, false, true, global1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, -2147483647i), vec4<i32>(-5913i, 2147483647i, var_1.x, var_1.x))), -select(vec4<i32>(var_1.x, 1i, var_1.x, var_1.x), vec4<i32>(var_1.x, -1i, -19724i, var_1.x), vec4<bool>(global1.x, false, global2[_wgslsmith_index_u32(4294967295u, 26u)], global1.x))).a << (u_input.a.xx % vec2<u32>(32u)));
    global1 = vec2<bool>(global1.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(29763u, u_input.a.x)), vec2<u32>(u_input.a.x, 80094u)) & ~u_input.a.wy, u_input.a.zz | u_input.a.zz, vec2<bool>(_wgslsmith_f_op_f32(floor(690f)) == 560f, !global2[_wgslsmith_index_u32(16226u, 26u)])));
}

