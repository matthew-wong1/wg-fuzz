struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-438f, -1073f), vec2<f32>(-2047f, 1476f), vec2<f32>(163f, 2329f), vec2<f32>(-1000f, 151f), vec2<f32>(285f, -181f), vec2<f32>(1727f, 360f), vec2<f32>(-1256f, 1000f), vec2<f32>(975f, -645f), vec2<f32>(-985f, 1014f), vec2<f32>(539f, 934f), vec2<f32>(-1322f, -471f), vec2<f32>(947f, 1000f), vec2<f32>(458f, 1346f), vec2<f32>(111f, -944f), vec2<f32>(1368f, -170f), vec2<f32>(523f, 2021f), vec2<f32>(918f, -2304f), vec2<f32>(-1000f, -2016f), vec2<f32>(-540f, 362f), vec2<f32>(1759f, 743f), vec2<f32>(657f, -746f), vec2<f32>(421f, -482f), vec2<f32>(641f, -1570f), vec2<f32>(-1525f, -897f), vec2<f32>(627f, -661f), vec2<f32>(-267f, -523f), vec2<f32>(1000f, -1861f), vec2<f32>(-424f, 1204f), vec2<f32>(-1000f, 949f), vec2<f32>(-592f, 880f), vec2<f32>(554f, 182f));

var<private> global1: Struct_4 = Struct_4(Struct_1(vec3<f32>(-1766f, -360f, 704f), 4294967295u));

var<private> global2: array<u32, 4> = array<u32, 4>(22400u, 14780u, 12858u, 1u);

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1541f, global1.a.a.x)), 577f)) * -245f), !vec3<bool>(false, !global3.x, any(vec4<bool>(true, global3.x, global3.x, true))), vec2<u32>(abs(0u) | ~global2[_wgslsmith_index_u32(42023u, 4u)], ~u_input.a.x) << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)] << (_wgslsmith_sub_u32(42458u, global1.a.b) % 32u), ~select(global2[_wgslsmith_index_u32(31493u, 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], global3.x)) % vec2<u32>(32u)), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -377f));
    global1 = Struct_4(var_0.d);
    var var_1 = 14711u;
    var var_2 = select(!(!select(select(vec4<bool>(global3.x, false, true, global3.x), vec4<bool>(false, true, false, var_0.b.x), global3.x), select(vec4<bool>(true, global3.x, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, var_0.b.x, false, true)), true)), select(!select(vec4<bool>(global3.x, true, true, true), !vec4<bool>(var_0.b.x, false, var_0.b.x, true), select(vec4<bool>(var_0.b.x, false, var_0.b.x, true), vec4<bool>(global3.x, true, false, var_0.b.x), vec4<bool>(global3.x, global3.x, false, true))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, global3.x), true), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), any(var_0.b.yy)), select(vec4<bool>(false, false, false, global3.x), vec4<bool>(global3.x, false, false, false), !vec4<bool>(global3.x, var_0.b.x, var_0.b.x, false)), vec4<bool>(all(vec3<bool>(var_0.b.x, var_0.b.x, global3.x)), all(var_0.b), !var_0.b.x, global3.x)), select(vec4<bool>(select(var_0.b.x, true, var_0.b.x), true, true, true), !select(vec4<bool>(true, true, true, global3.x), vec4<bool>(true, global3.x, var_0.b.x, false), vec4<bool>(var_0.b.x, true, var_0.b.x, true)), true)), false);
    var_1 = 1u;
    return _wgslsmith_sub_u32(11829u, 1u);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    let var_0 = ~(~vec2<u32>(func_3(), arg_3.a.b));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.a.x * arg_3.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.a.x)) * arg_0)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-326f, -419f, -1105f, -1105f)))))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-561f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) * var_1.a)), select(select(vec3<bool>(false, false, global3.x && global3.x), vec3<bool>(true, arg_1.x, arg_1.x), !vec3<bool>(false, arg_1.x, arg_1.x)), vec3<bool>(!arg_1.x, false, any(!global3.xx)), arg_1.x), u_input.a.zy, Struct_1(global1.a.a, 1u), -1096f);
    var var_4 = abs(2147483647i);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.a.a.x, _wgslsmith_f_op_f32(round(arg_3.a.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + -423f), _wgslsmith_f_op_f32(f32(-1f) * -851f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1238f, -292f) - 221f))))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    var var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.a.a.x, global3.yy, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(34847u, 4u)]), Struct_4(Struct_1(global1.a.a, global2[_wgslsmith_index_u32(global1.a.b, 4u)]))))) < _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 568f), _wgslsmith_f_op_f32(trunc(global1.a.a.x))))), all(vec3<bool>(!global3.x, global3.x, false)) & (all(vec4<bool>(arg_1.x, global3.x, false, arg_1.x)) | any(vec4<bool>(arg_1.x, global3.x, false, global3.x))), select(arg_1.x, any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.x, global3.x), vec3<bool>(true, global3.x, false), vec3<bool>(true, false, arg_1.x)), arg_1.x))));
    var var_1 = Struct_2(global1.a, Struct_1(global1.a.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.b, global1.a.b, 4294967295u), u_input.a), countOneBits(1u)), 3795u)), global1.a, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.a)), vec3<f32>(global1.a.a.x, 1791f, _wgslsmith_f_op_f32(abs(global1.a.a.x)))), u_input.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.x) - _wgslsmith_f_op_f32(-626f * -627f))), global1.a.a.x)));
    let var_2 = _wgslsmith_clamp_u32(~(4294967295u << (global2[_wgslsmith_index_u32(1u, 4u)] % 32u)), 93992u, global2[_wgslsmith_index_u32(countOneBits(~(~var_1.d.b)), 4u)]) | (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~82826u, ~0u, select(22918u, 0u, false)), ~(~1u)) >> (~4294967295u % 32u));
    let var_3 = arg_1;
    let var_4 = -18151i;
    return abs(reverseBits(global2[_wgslsmith_index_u32(~(~(~var_1.a.b)), 4u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a.x, (~(~global2[_wgslsmith_index_u32(0u, 4u)]) | 0u) << (~func_1(~2147483647i, select(vec2<bool>(true, true), global3.yy, global3.x)) % 32u), ~firstLeadingBit((u_input.a.x ^ 4294967295u) ^ max(0u, global2[_wgslsmith_index_u32(77251u, 4u)])));
    let var_1 = Struct_3(-1646f, !select(select(select(vec3<bool>(global3.x, true, true), vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, global3.x, true)), select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, global3.x, global3.x), vec3<bool>(true, global3.x, global3.x)), all(vec2<bool>(true, global3.x))), vec3<bool>(true, true, true), !select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, false, false), true)), ~(~var_0.zz), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1910f) * 1f), -251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a.x + 1000f) - _wgslsmith_f_op_f32(502f * 1000f))), 0u), 1f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.a.x))));
    var var_3 = _wgslsmith_f_op_f32(sign(-596f));
    let var_4 = _wgslsmith_clamp_vec3_i32(-(~countOneBits(vec3<i32>(1i, 1i, 1i))), -_wgslsmith_mod_vec3_i32(vec3<i32>(~(-1i), ~1i, i32(-1i) * -2147483647i), vec3<i32>(_wgslsmith_sub_i32(47526i, 0i), ~1i, ~8418i)), ~vec3<i32>(1i, 1i, 1i));
    var var_5 = global3.x;
    let var_6 = Struct_5(var_2);
    let var_7 = var_1.b.x;
    let var_8 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(24930i, vec2<i32>(0i, abs(_wgslsmith_sub_i32(-1i, var_4.x))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(global2[_wgslsmith_index_u32(38607u, 4u)], var_1.c.x, var_1.c.x, var_1.d.b), select(vec4<u32>(0u, global1.a.b, u_input.a.x, 1u), vec4<u32>(global2[_wgslsmith_index_u32(0u, 4u)], global1.a.b, 22990u, 28005u), true), var_1.b.x), (vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 73354u, 43380u, u_input.a.x) | vec4<u32>(4294967295u, 15304u, 80801u, global2[_wgslsmith_index_u32(0u, 4u)])) << (vec4<u32>(global2[_wgslsmith_index_u32(1u, 4u)], global1.a.b, global2[_wgslsmith_index_u32(4294967295u, 4u)], 17256u) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(global1.a.b, 1u, 1u, 34286u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31218u, 4u)], 4u)], global1.a.b, 18454u, 86610u), vec4<bool>(var_1.b.x, global3.x, global3.x, global3.x)), vec4<u32>(32002u, 85941u, var_0.x, 47835u))), min(-(_wgslsmith_add_i32(1i, var_4.x) >> (_wgslsmith_sub_u32(5575u, var_1.c.x) % 32u)), 1i), u_input.a);
}

