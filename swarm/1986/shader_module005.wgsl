struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(824f, Struct_1(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 16190u), vec4<u32>(25054u, 37886u, 1u, 4294967295u))), Struct_2(407f, Struct_1(vec3<bool>(false, true, true), vec2<u32>(6156u, 1u), vec4<u32>(1u, 4294967295u, 58219u, 0u))), Struct_2(-878f, Struct_1(vec3<bool>(true, true, false), vec2<u32>(70714u, 110049u), vec4<u32>(61248u, 23829u, 11181u, 1u))), Struct_2(1154f, Struct_1(vec3<bool>(false, false, true), vec2<u32>(1u, 14985u), vec4<u32>(1u, 7991u, 4294967295u, 0u))), Struct_2(1000f, Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 1u), vec4<u32>(1u, 1u, 0u, 1u))), Struct_2(784f, Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 43804u), vec4<u32>(37245u, 34478u, 1u, 27780u))), Struct_2(2582f, Struct_1(vec3<bool>(false, true, false), vec2<u32>(99010u, 1u), vec4<u32>(150276u, 16216u, 0u, 38298u))), Struct_2(1763f, Struct_1(vec3<bool>(true, true, false), vec2<u32>(4182u, 40157u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u))));

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: Struct_2 = Struct_2(429f, Struct_1(vec3<bool>(true, false, true), vec2<u32>(17027u, 19164u), vec4<u32>(71051u, 1u, 4294967295u, 4184u)));

var<private> global3: array<u32, 20>;

var<private> global4: array<bool, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.a.xwy;
    var_0 = vec3<u32>(1u, 4294967295u, _wgslsmith_sub_u32(max(0u, global3[_wgslsmith_index_u32(global2.b.b.x, 20u)]), global3[_wgslsmith_index_u32(max(global2.b.c.x, ~arg_2.b.x), 20u)] ^ 19572u));
    global3 = array<u32, 20>();
    let var_1 = global2.b;
    var var_2 = global2.b.c.xyy >> ((~vec3<u32>(16053u, arg_0.c.x, ~global2.b.b.x) | ~(~(~vec3<u32>(1u, global2.b.b.x, 31284u)))) % vec3<u32>(32u));
    return u_input.a.x;
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = select(-abs(max(-vec3<i32>(-44715i, -2147483647i, 2147483647i), min(vec3<i32>(-16762i, 1i, -49272i), vec3<i32>(-1i, 21415i, -29154i)))), firstTrailingBit(vec3<i32>(-2147483647i, _wgslsmith_div_i32(1i, -1i << (1u % 32u)), 1i)), false);
    var var_1 = select(vec4<bool>(var_0.x > -2147483647i, !all(vec3<bool>(global2.b.a.x, true, global4[_wgslsmith_index_u32(global2.b.c.x, 22u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-global2.a)), true), !(!(!vec4<bool>(global4[_wgslsmith_index_u32(arg_0, 22u)], true, true, true))), !select(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16429u, 20u)], 22u)], global4[_wgslsmith_index_u32(4294967295u, 22u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), !vec4<bool>(global2.b.a.x, global2.b.a.x, global2.b.a.x, global2.b.a.x), vec4<bool>(false, true, true, true)), vec4<bool>(false, all(global1[_wgslsmith_index_u32(arg_0, 11u)]), true && global4[_wgslsmith_index_u32(27675u, 22u)], !global2.b.a.x), global2.b.a.x));
    var var_2 = !(!select(global1[_wgslsmith_index_u32(global2.b.c.x, 11u)], global1[_wgslsmith_index_u32(14674u, 11u)], true));
    var var_3 = Struct_1(vec3<bool>(global2.b.a.x, global2.b.a.x & var_2.x, true), vec2<u32>(~((29513u << (arg_0 % 32u)) & _wgslsmith_dot_vec4_u32(u_input.a, global2.b.c)), global2.b.b.x), u_input.a);
    let var_4 = _wgslsmith_f_op_f32(-global2.a);
    return min(~(~(~vec2<u32>(arg_0, var_3.b.x))) >> (global2.b.c.zz % vec2<u32>(32u)), ~(~vec2<u32>(19828u, select(var_3.c.x, 0u, true))));
}

fn func_2() -> Struct_2 {
    var var_0 = global2.b;
    var var_1 = ~35206u;
    global0 = array<Struct_2, 8>();
    let var_2 = reverseBits(vec3<u32>(4294967295u, (global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] | 47693u) << (var_0.b.x % 32u), reverseBits(var_0.b.x)));
    global0 = array<Struct_2, 8>();
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(min(_wgslsmith_clamp_vec2_u32(u_input.a.wz, var_0.c.zz, vec2<u32>(0u, global3[_wgslsmith_index_u32(global2.b.c.x, 20u)])), func_3(4294967295u)), _wgslsmith_div_vec2_u32(~vec2<u32>(var_0.b.x, 0u), vec2<u32>(0u, global2.b.c.x))), global2.b.b.x), 20u)], _wgslsmith_div_u32(~(var_0.b.x | ~44482u), 0u), func_1(global2.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, global2.a, global2.a, global2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, 1468f, -639f, global2.a) - vec4<f32>(372f, -122f, global2.a, global2.a)), -1129f != global2.a)))), Struct_1(vec3<bool>(!global2.b.a.x, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u ^ global2.b.c.x, 20u)], 22u)], true), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, var_2.x), ~global2.b.b, vec2<u32>(6796u, 1u)), firstTrailingBit(vec4<u32>(43353u, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 20u)], 24208u) >> (vec4<u32>(var_0.c.x, 24251u, 31393u, 0u) % vec4<u32>(32u)))))), 8u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    global4 = array<bool, 22>();
    let var_0 = ~global2.b.b;
    global4 = array<bool, 22>();
    global1 = array<vec2<bool>, 11>();
    let var_1 = arg_0;
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, firstTrailingBit(func_1(Struct_1(global2.b.a, global2.b.c.yw, global2.b.c), vec4<f32>(474f, global2.a, 570f, -1443f), Struct_1(vec3<bool>(global4[_wgslsmith_index_u32(6089u, 22u)], global2.b.a.x, global4[_wgslsmith_index_u32(91226u, 22u)]), global2.b.b, vec4<u32>(71716u, 19355u, 3668u, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]))))) << (~global3[_wgslsmith_index_u32(u_input.a.x, 20u)] % 32u), 8u)], !(!vec3<bool>(all(vec3<bool>(true, global2.b.a.x, false)), global3[_wgslsmith_index_u32(40323u, 20u)] != 4294967295u, true)), func_2(), func_2().b.a.yz);
    var_0 = func_4(global0[_wgslsmith_index_u32(u_input.a.x >> (1u % 32u), 8u)], select(func_2().b.a, vec3<bool>(var_0.a.x, var_0.a.x, all(func_4(Struct_2(-113f, global2.b), global2.b.a, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23791u, 20u)], 8u)], vec2<bool>(true, false)).a.yy)), !var_0.a), global0[_wgslsmith_index_u32((global3[_wgslsmith_index_u32(0u, 20u)] ^ func_3(7190u).x) ^ global2.b.c.x, 8u)], !(!func_2().b.a.yy));
    var var_1 = vec3<i32>(-11385i, ~firstLeadingBit(1i), reverseBits(1i));
    let var_2 = global2.b.b.x;
    var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -892f), global2.b), !(!(!(!vec3<bool>(global4[_wgslsmith_index_u32(var_0.b.x, 22u)], true, global4[_wgslsmith_index_u32(59700u, 22u)])))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x | 14805u, ~(~0u)) >> (4294967295u % 32u), 8u)], vec2<bool>(true, true));
    var var_3 = ~max(-var_1.xy, var_1.xx);
    var_1 = select(vec3<i32>(var_1.x, ~(var_1.x ^ -2147483647i), 8884i) & _wgslsmith_div_vec3_i32(select(~vec3<i32>(var_1.x, 0i, var_1.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, -38126i, 2147483647i), vec3<i32>(var_1.x, var_1.x, var_3.x)), !vec3<bool>(true, true, global4[_wgslsmith_index_u32(53721u, 22u)])), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_3.x, -16803i), select(vec3<i32>(-2147483647i, var_1.x, -72954i), vec3<i32>(var_3.x, 1i, 2147483647i), vec3<bool>(true, true, true)), vec3<i32>(2147483647i, var_1.x, -55394i))), vec3<i32>(-42201i, i32(-1i) * -(~33452i), countOneBits(reverseBits(firstLeadingBit(1i)))), !global4[_wgslsmith_index_u32(countOneBits(4113u), 22u)] || all(vec2<bool>(!var_0.a.x, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44832u, 20u)], 22u)])));
    var var_4 = vec3<i32>(-(~5607i), var_1.x, abs(var_1.x));
    var_3 = max(countOneBits(vec2<i32>(var_1.x, 0i)), vec2<i32>(_wgslsmith_div_i32(abs(_wgslsmith_add_i32(var_3.x, -1i)), -_wgslsmith_dot_vec2_i32(var_4.yx, var_1.zx)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.x, 2147483647i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(328f, -1182f))), _wgslsmith_f_op_f32(ceil(-354f)), global2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.a * 965f), _wgslsmith_f_op_f32(step(global2.a, global2.a)), -105f, 2353f)))), func_2().b.b.x, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -20508i, 61546i), var_3.x, ~(var_3.x | var_3.x)), min(_wgslsmith_sub_i32(~(-1i), _wgslsmith_add_i32(0i, 1i)), var_4.x), ~0i, 1412i));
}

