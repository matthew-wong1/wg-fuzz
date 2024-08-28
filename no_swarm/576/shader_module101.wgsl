struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<vec3<i32>, 4>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32) -> vec3<u32> {
    let var_0 = -1000f;
    global1 = array<vec3<i32>, 4>();
    return global2.d;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(996f, -2264f, -1270f, global2.b))) - vec4<f32>(_wgslsmith_f_op_f32(296f * -540f), _wgslsmith_f_op_f32(ceil(global2.b)), _wgslsmith_f_op_f32(-global2.b), -207f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global2.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c))), global2.c, _wgslsmith_f_op_f32(global2.c * global2.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, _wgslsmith_f_op_f32(min(1645f, -1340f)), _wgslsmith_f_op_f32(sign(global2.c)), global2.b))));
    global1 = array<vec3<i32>, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1400f)) * _wgslsmith_div_f32(779f, global2.c)), _wgslsmith_f_op_f32(-global2.c), global2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), -1311f))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(-var_0), any(vec4<bool>(true, global2.a.b.x, false, global2.a.b.x)))), var_0)))));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(-2522f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1603f), _wgslsmith_f_op_f32(max(-456f, -291f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b, 413f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(290f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), -816f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.yyz);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-880f, global2.c, -39936i >= _wgslsmith_mod_i32(global2.e.x, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(global2.a.a.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)])))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_2(arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1922f, global2.c))), _wgslsmith_f_op_f32(max(813f, _wgslsmith_f_op_f32(global2.c * -196f)))))), global2.b, abs(firstLeadingBit(reverseBits(arg_2.a))), vec3<i32>(_wgslsmith_sub_i32(~(u_input.a.x << (4294967295u % 32u)), _wgslsmith_mult_i32(arg_0, -1i)), ~firstTrailingBit(u_input.a.x), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 15452i, 8015i), global1[_wgslsmith_index_u32(~0u, 4u)])));
    var var_1 = Struct_1(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(var_0.c, 539f), _wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_div_f32(-601f, var_0.c), global2.c))), select(-vec3<i32>(-52385i, -30451i, -2147483647i), vec3<i32>(~arg_0, arg_0, global2.e.x), vec3<bool>(true, all(vec3<bool>(arg_2.b.x, true, false)), false)), global2.c), vec2<bool>(all(select(!arg_3, arg_2.b, var_0.a.b.x)), !arg_3.x));
    let var_2 = Struct_2(var_0.a, var_0.c, _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1324f, var_0.b)) - _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(func_3())))), var_1.a, _wgslsmith_mod_vec3_i32(var_0.e, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(global2.e.x, -50412i, -1i)), var_0.e)));
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_2.c, var_3.c)), global2.b)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, global2.c) - vec2<f32>(var_2.b, -952f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1718f, var_0.b) * vec2<f32>(var_3.c, -1012f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, var_2.b) - vec2<f32>(var_3.c, var_0.c)))))));
    return 413f;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(select(arg_2.d, ~vec3<u32>(arg_2.a.a.x, global2.d.x, 39918u), !arg_2.a.b.x), arg_2.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global2.b, vec3<u32>(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, -1000f, 664f, -999f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(907f, arg_2.c, 250f, 1000f))), false)), ~select(vec3<i32>(arg_2.e.x, u_input.a.x, u_input.a.x), global2.e, vec3<bool>(global2.a.b.x, arg_2.a.b.x, false)), 728f).x, reverseBits(~max(arg_1, 1u)), 4294967295u), _wgslsmith_div_vec3_i32(vec3<i32>(~firstLeadingBit(12328i), global2.e.x, -1i), global2.e));
    let var_1 = any(!(!select(vec3<bool>(false, var_0.a.b.x, arg_2.a.b.x), vec3<bool>(global2.a.b.x, var_0.a.b.x, var_0.a.b.x), arg_2.a.b.x))) & all(!(!vec2<bool>(arg_2.a.b.x, true)));
    var_0 = Struct_2(Struct_1(~vec3<u32>(var_0.a.a.x, global0[_wgslsmith_index_u32(4294967295u, 28u)], 46290u), vec2<bool>(false, global2.a.b.x)), -1246f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1128f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))))), reverseBits(global2.a.a), vec3<i32>(~(-1i), 38833i, ~arg_0));
    let var_2 = Struct_2(Struct_1(vec3<u32>(global2.d.x << (~global0[_wgslsmith_index_u32(1u, 28u)] % 32u), global2.d.x, global0[_wgslsmith_index_u32(68806u, 28u)]), vec2<bool>(var_1, false)), _wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(-arg_2.b)), 1069f, vec3<u32>(arg_1, ~14234u ^ arg_2.d.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(global2.d.x, var_0.a.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 28u)]), global2.a.a.zx))) << (~global2.d % vec3<u32>(32u)), arg_2.e << (~var_0.d % vec3<u32>(32u)));
    var var_3 = Struct_2(Struct_1(select(global2.d, vec3<u32>(~global0[_wgslsmith_index_u32(46185u, 28u)], 2911u & global0[_wgslsmith_index_u32(var_0.d.x, 28u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_1, 28u)], 45597u)), false), select(select(select(var_0.a.b, vec2<bool>(true, var_1), false), select(arg_2.a.b, global2.a.b, vec2<bool>(var_2.a.b.x, false)), var_2.a.b.x), global2.a.b, all(select(vec4<bool>(true, arg_2.a.b.x, var_1, global2.a.b.x), vec4<bool>(true, global2.a.b.x, false, true), var_0.a.b.x)))), -1579f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(arg_2.b * global2.c))) - _wgslsmith_f_op_f32(206f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-308f)))))), vec3<u32>(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_2.d.x, 28u)] << (var_2.a.a.x % 32u), 62077u), ~4294967295u, ~var_2.d.x), -(vec3<i32>(~global2.e.x, firstTrailingBit(-1i), 15591i) ^ (~global2.e ^ var_0.e)));
    return Struct_1(_wgslsmith_mult_vec3_u32(global2.d, ~arg_2.a.a & (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.a.x, 0u, 0u), vec3<u32>(1u, 15400u, var_3.d.x), vec3<u32>(arg_1, 71111u, 32425u)) >> (abs(vec3<u32>(global0[_wgslsmith_index_u32(arg_1, 28u)], 116981u, global0[_wgslsmith_index_u32(var_2.d.x, 28u)])) % vec3<u32>(32u)))), vec2<bool>(arg_0 == ~_wgslsmith_mult_i32(22313i, u_input.a.x), global2.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(i32(-1i) * -6107i, -30909i, _wgslsmith_mod_i32(global2.e.x, countOneBits(~(-20141i | u_input.a.x))));
    let var_1 = func_4(select(global2.e.x, u_input.a.x | -_wgslsmith_mod_i32(-1i, -18161i), _wgslsmith_f_op_f32(func_1(u_input.a.x, _wgslsmith_sub_vec3_u32(global2.a.a, global2.d), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(1u, 28u)], 64495u, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(global2.a.b.x, global2.a.b.x)), select(vec2<bool>(global2.a.b.x, global2.a.b.x), vec2<bool>(false, false), false))) == global2.b), _wgslsmith_sub_u32(firstTrailingBit(0u), ~(~4294967295u) & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(23247u, 28u)], global2.d.x, 55691u), vec3<u32>(global2.d.x, 48303u, 5747u)), abs(4294967295u))), Struct_2(global2.a, _wgslsmith_f_op_f32(func_1(~(-8002i << (global2.a.a.x % 32u)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12476u, 28u)], 28u)], global0[_wgslsmith_index_u32(global2.a.a.x, 28u)], 34413u) << (select(global2.d, global2.d, global2.a.b.x) % vec3<u32>(32u)), Struct_1(vec3<u32>(48687u, 1u, global2.a.a.x), select(global2.a.b, vec2<bool>(false, false), vec2<bool>(global2.a.b.x, global2.a.b.x))), !vec2<bool>(false, global2.a.b.x))), 264f, ~global2.d, vec3<i32>(-global2.e.x, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1i), global2.e.yz) ^ global2.e.x)));
    let var_2 = global2.a;
    var var_3 = !vec2<bool>(false, var_2.b.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) - global2.c)), _wgslsmith_f_op_f32(ceil(1138f)), !any(vec3<bool>(var_3.x, true, false)))));
    var var_5 = max(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 110361u, 13193u, var_1.a.x) ^ vec4<u32>(23206u, var_1.a.x, var_2.a.x, global2.d.x), firstTrailingBit(vec4<u32>(0u, 4294967295u, var_2.a.x, 1u)))), vec4<u32>(var_2.a.x, var_1.a.x, 4294967295u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, ~var_1.a.yx, min(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a.x, 45459u) | (global2.a.a.x ^ 4294967295u), 28u)], 4u)] >> (~func_2(vec4<f32>(global2.c, 209f, global2.b, -1302f), u_input.a, 1000f) % vec3<u32>(32u)), vec3<i32>(-23307i, -u_input.a.x, 8374i) & -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, -1i, u_input.a.x), vec3<i32>(-1i, global2.e.x, -36847i))), global2.d.x);
}

