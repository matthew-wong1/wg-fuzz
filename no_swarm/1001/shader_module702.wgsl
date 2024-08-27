struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-553f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-152f, -775f) + 264f))));
    let var_2 = Struct_1(firstLeadingBit(-max(vec4<i32>(u_input.a, -16067i, -1i, u_input.a), vec4<i32>(2762i, u_input.a, -72096i, u_input.a))) << (abs(vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, u_input.b.x)), ~1u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1265f, _wgslsmith_f_op_f32(step(-800f, -188f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1164f))), _wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 207f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1199f, -386f, 1895f, 620f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1128f, -2185f, -876f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(691f * -1000f), _wgslsmith_f_op_f32(select(469f, -1981f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -908f))))), !vec2<bool>(!(u_input.b.x <= 66454u), 4810i != (-19566i ^ u_input.a)), 40818u, 537f);
    var_1 = _wgslsmith_f_op_f32(-var_2.b.x);
    var var_3 = u_input.b.zy;
    return select(vec4<i32>(-26935i, i32(-1i) * -6042i, _wgslsmith_dot_vec2_i32(var_2.a.zz, abs(var_2.a.wz) >> (u_input.b.xx % vec2<u32>(32u))), countOneBits(firstLeadingBit(max(var_2.a.x, -42684i)))), max((-var_2.a >> ((vec4<u32>(117618u, var_2.d, var_2.d, u_input.b.x) | vec4<u32>(u_input.b.x, var_3.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) << (~(~vec4<u32>(0u, 1u, var_3.x, var_3.x)) % vec4<u32>(32u)), vec4<i32>(2147483647i, -1i, _wgslsmith_dot_vec4_i32(var_2.a, _wgslsmith_div_vec4_i32(var_2.a, var_2.a)), u_input.a)), any(vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(var_2.c.x, false, var_2.c.x, var_2.c.x), vec4<bool>(true, var_2.c.x, var_0, false))), all(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_2.c.x, true, true, var_0), false)), any(select(var_2.c, var_2.c, var_2.c)), true)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(func_3(), -firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)))), vec4<f32>(arg_3.x, 1012f, arg_1, 208f), vec2<bool>(true, true), abs(62976u), _wgslsmith_f_op_f32(min(-783f, arg_1)));
    var var_1 = -vec3<i32>(abs(abs(~u_input.a)), ~(~1i), var_0.a.x);
    var_1 = _wgslsmith_div_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(u_input.a, var_1.x, u_input.a)), select(var_0.a.wyz, vec3<i32>(countOneBits(var_1.x), i32(-1i) * -60708i, 2147483647i), vec3<bool>(!(var_0.c.x | var_0.c.x), _wgslsmith_f_op_f32(-1000f + -380f) < _wgslsmith_f_op_f32(480f * arg_3.x), true)));
    var_1 = var_0.a.xwz;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1224f - arg_1), arg_3.x) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-501f, var_0.b.x))))));
    return select(vec4<bool>(!var_0.c.x, var_0.c.x, var_0.c.x & all(!vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x)), var_0.c.x), select(!(!vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x)), vec4<bool>(!var_0.c.x, all(select(vec4<bool>(false, true, var_0.c.x, false), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x))), any(vec3<bool>(true, false, false)), any(select(vec3<bool>(var_0.c.x, true, var_0.c.x), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(var_0.c.x, var_0.c.x, true)))), select(select(select(vec4<bool>(false, var_0.c.x, var_0.c.x, false), vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), var_0.c.x), select(vec4<bool>(false, var_0.c.x, var_0.c.x, false), vec4<bool>(var_0.c.x, true, var_0.c.x, true), vec4<bool>(true, var_0.c.x, true, var_0.c.x)), true), select(vec4<bool>(var_0.c.x, false, false, var_0.c.x), !vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), !vec4<bool>(true, var_0.c.x, false, false)), !select(vec4<bool>(true, true, true, var_0.c.x), vec4<bool>(true, true, var_0.c.x, false), var_0.c.x))), select(vec4<bool>(var_0.c.x, true, any(select(vec3<bool>(true, true, var_0.c.x), vec3<bool>(false, var_0.c.x, false), vec3<bool>(false, false, false))), true), select(vec4<bool>(true, true, true, var_0.c.x), !vec4<bool>(false, var_0.c.x, false, var_0.c.x), var_0.c.x), var_0.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<i32> {
    var var_0 = -vec3<i32>(-2147483647i, arg_0.a.x, 15382i);
    let var_1 = vec4<bool>(4294967295u <= ~(firstTrailingBit(arg_0.d) & arg_1.x), select(any(!func_2(u_input.b.x, -425f, vec4<u32>(0u, u_input.b.x, 34520u, arg_0.d), vec4<f32>(672f, 1351f, arg_0.b.x, 517f))), (abs(u_input.a) << ((4294967295u >> (arg_1.x % 32u)) % 32u)) <= ~_wgslsmith_sub_i32(2147483647i, 38423i), select(all(select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, false, false, arg_0.c.x), vec4<bool>(false, false, arg_0.c.x, false))), arg_0.c.x, all(!vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.c.x)))), arg_0.c.x, false);
    var_0 = arg_0.a.wyw;
    var_0 = reverseBits(~vec3<i32>(-1i, var_0.x, min(var_0.x, arg_0.a.x)) ^ _wgslsmith_mod_vec3_i32(arg_0.a.wzw >> (~vec3<u32>(arg_1.x, 4752u, 0u) % vec3<u32>(32u)), arg_0.a.zzy));
    var var_2 = var_1.x;
    return vec3<i32>(arg_0.a.x, var_0.x, var_0.x >> (~(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(7232i, u_input.a, u_input.a), ~vec3<i32>(u_input.a, u_input.a, u_input.a)), countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(-57935i, u_input.a), _wgslsmith_mod_i32(36985i, -1i)), -2147483647i, -u_input.a) & func_1(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 40394i, u_input.a, 2147483647i), vec4<i32>(31301i, u_input.a, 0i, 0i)), vec4<f32>(-277f, 1089f, -105f, -563f), vec2<bool>(false, false), 50305u, 1104f), ~abs(u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.yy, u_input.b.xz), u_input.b.yy), u_input.b.yx | abs(u_input.b.xx)), reverseBits(abs(~(vec4<u32>(36222u, u_input.b.x, 34702u, u_input.b.x) << (vec4<u32>(20045u, 43679u, 4294967295u, u_input.b.x) % vec4<u32>(32u))))));
}

