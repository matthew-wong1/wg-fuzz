struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<f32, 26> = array<f32, 26>(-466f, 572f, -115f, -179f, 666f, 172f, 100f, 839f, -1112f, -1030f, -134f, 1000f, -698f, -670f, -538f, 1876f, -491f, -151f, -802f, 888f, -730f, 837f, 131f, -881f, 196f, 1469f);

var<private> global1: vec3<f32> = vec3<f32>(-550f, -1246f, 722f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_1(global1.x, global1.zx);
    let var_1 = 1f;
    global0 = array<f32, 26>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-895f, 516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - -1207f), _wgslsmith_f_op_f32(ceil(var_1))));
}

fn func_3() -> bool {
    global0 = array<f32, 26>();
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-373f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1164f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-132f - _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(17869u, 26u)])))))));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1247f, 795f), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global1.x))))))), select(vec3<bool>(all(vec4<bool>(true, true, true, false)) && true, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(30692u, 63311u)) >= reverseBits(44028u), any(vec2<bool>(true, true))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.a.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.a.b))))));
    global0 = array<f32, 26>();
    return false;
}

fn func_2() -> Struct_5 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], 1000f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(243f + global0[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_f_op_f32(min(global1.x, -854f)), _wgslsmith_f_op_f32(f32(-1f) * -984f)))))) * vec3<f32>(global1.x, _wgslsmith_div_f32(-527f, 1003f), 405f));
    var var_0 = vec2<bool>(select(select(global1.x < global0[_wgslsmith_index_u32(76528u, 26u)], any(vec3<bool>(false, false, true)), any(vec2<bool>(true, true))) && func_3(), select(true, _wgslsmith_f_op_f32(f32(-1f) * -160f) == global1.x, true), !(_wgslsmith_f_op_f32(-global1.x) != _wgslsmith_f_op_f32(-208f * global0[_wgslsmith_index_u32(62982u, 26u)]))), true);
    let var_1 = -(~(vec4<i32>(-8813i, 38782i, u_input.a, u_input.a) ^ vec4<i32>(u_input.c.x, 0i, u_input.b.x, 0i)) & vec4<i32>(~u_input.d, u_input.b.x, 2147483647i, ~783i));
    var var_2 = Struct_1(-287f, vec2<f32>(global1.x, 1312f));
    var_0 = vec2<bool>(true, true);
    return Struct_5(Struct_3(1731f, -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -3849i), vec2<i32>(11711i, var_1.x)), firstLeadingBit(u_input.c)), 1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(189f, global1.x))), vec2<f32>(_wgslsmith_f_op_f32(-989f - var_2.a), _wgslsmith_f_op_f32(var_2.b.x - var_2.b.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(step(1670f, 1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.a, var_2.b.x), vec2<f32>(332f, -528f)))), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), var_0.x), !vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, true)))), Struct_3(_wgslsmith_f_op_f32(var_2.a - 456f), abs(select(-u_input.b.xx, _wgslsmith_sub_vec2_i32(u_input.b.yz, vec2<i32>(u_input.a, -1i)), vec2<bool>(false, true))), _wgslsmith_add_u32(89274u, 1u), _wgslsmith_f_op_vec2_f32(global1.yx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xz))), Struct_2(Struct_1(_wgslsmith_f_op_f32(733f + var_2.a), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(29319u, 26u)], var_2.b.x), global1.yx)), vec3<bool>(true, var_0.x || false, false || var_0.x))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5) -> Struct_3 {
    let var_0 = Struct_4(vec3<u32>(arg_0.a.c, _wgslsmith_clamp_u32(arg_0.a.c, ~26171u, 4294967295u << (abs(0u) % 32u)), ~4294967295u), vec2<i32>(-6892i, 96976i), Struct_1(311f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.e.a.b.x, -363f))))), vec3<f32>(_wgslsmith_div_f32(-2379f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.a.e.a.b.x, global0[_wgslsmith_index_u32(arg_1, 26u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-917f * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(8169u, 26u)], arg_0.b.d.x))), _wgslsmith_f_op_f32(arg_0.b.d.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(50257u, 26u)]))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1374f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.zz, vec2<f32>(arg_2.a.a, arg_0.a.e.a.b.x), !arg_2.a.e.b.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(min(var_0.d, _wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)))));
    var var_2 = Struct_4(firstTrailingBit(var_0.a), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.b.b.x, -14899i), vec2<i32>(2147483647i >> (0u % 32u), var_0.b.x)), vec2<i32>(u_input.d, _wgslsmith_mod_i32(1i | arg_0.b.b.x, reverseBits(-1i)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(151f, -750f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.b.c, 26u)])), _wgslsmith_div_vec2_f32(var_0.d.zz, vec2<f32>(_wgslsmith_f_op_f32(1000f * 1000f), arg_2.b.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d + vec3<f32>(arg_2.a.e.a.b.x, -194f, 125f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(176f, arg_0.b.e.a.b.x, 652f) - var_0.d) + var_0.d))));
    global1 = vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1((1i & (u_input.d | var_2.b.x)) & (arg_2.b.b.x << (~53027u % 32u)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-875f - _wgslsmith_f_op_f32(-422f + 526f)))), _wgslsmith_f_op_f32(global1.x + -594f));
    return Struct_3(_wgslsmith_f_op_f32(-global1.x), ~vec2<i32>(var_2.b.x, -1i), 4294967295u << (var_2.a.x % 32u), vec2<f32>(-209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.c.a + 815f))) - var_0.d.x)), func_2().b.e);
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_3) -> bool {
    global0 = array<f32, 26>();
    var var_0 = Struct_4(_wgslsmith_sub_vec3_u32(vec3<u32>(32154u, func_2().a.c, 1u), _wgslsmith_add_vec3_u32(reverseBits(arg_1.xyz) << (vec3<u32>(13337u, 4294967295u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(arg_2.c, 4965u, 10643u))), ~firstLeadingBit((u_input.c >> (arg_1.zw % vec2<u32>(32u))) >> (max(vec2<u32>(arg_1.x, 21127u), arg_1.xz) % vec2<u32>(32u))), func_2().a.e.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1848f, 364f, 1000f)))))));
    var var_1 = Struct_1(-168f, global1.xx);
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(17854u, 0u), ~abs(arg_1.xy));
    var_0 = Struct_4(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(42743u), ~var_2.x, ~51801u), ~arg_1.wzy & vec3<u32>(var_0.a.x, arg_1.x, 4294967295u))), u_input.c, func_4(func_2(), 0u, Struct_5(func_2().b, arg_2)).e.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(456f, -595f, 694f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), var_0.d.x, 368f)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    var var_0 = ~firstTrailingBit(~vec4<u32>(~20907u, ~32966u, 0u, 4294967295u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.a)));
    let var_2 = any(vec3<bool>(u_input.c.x != (firstLeadingBit(u_input.b.x) & 10708i), true, func_5(all(vec3<bool>(false, false, true)) || true, ~vec4<u32>(var_0.x, var_0.x, 33509u, 1u) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, 10969u, 4294967295u), vec4<u32>(var_0.x, var_0.x, var_0.x, 70425u)), func_4(func_2(), _wgslsmith_add_u32(26743u, var_0.x), func_2()))));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1, vec4<f32>(2909f, 1000f, global0[_wgslsmith_index_u32(var_0.x, 26u)], -1318f)) * _wgslsmith_f_op_vec4_f32(-var_1)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1005f, 706f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10342u, 26u)]), 1467f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1047f, 903f, -1000f, 1000f)), _wgslsmith_f_op_vec4_f32(-var_1)))))))));
    let var_4 = u_input.a >> (var_0.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_4);
}

