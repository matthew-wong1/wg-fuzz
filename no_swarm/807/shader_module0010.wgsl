struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 0u);

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 31> = array<u32, 31>(0u, 44245u, 4294967295u, 59447u, 4294967295u, 4294967295u, 4294967295u, 0u, 1u, 7865u, 76301u, 5970u, 1u, 52938u, 0u, 1u, 1u, 4294967295u, 1u, 49446u, 4294967295u, 4294967295u, 44520u, 4294967295u, 11615u, 0u, 4294967295u, 4294967295u, 0u, 0u, 30721u);

var<private> global3: array<i32, 23>;

var<private> global4: array<vec2<u32>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    var var_0 = 592f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(217f)), _wgslsmith_f_op_f32(-2839f - -876f), _wgslsmith_f_op_f32(floor(-878f)), _wgslsmith_div_f32(814f, 575f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(947f, 821f, 1523f, -698f))), vec4<f32>(499f, 1653f, 1729f, 1000f))))), _wgslsmith_mult_u32(global0.x, _wgslsmith_div_u32(4294967295u, ~global2[_wgslsmith_index_u32(global1.x, 31u)])));
    let var_2 = firstLeadingBit(u_input.b.x);
    var var_3 = i32(-1i) * -(-global3[_wgslsmith_index_u32(428u, 23u)] << (41157u % 32u));
    let var_4 = Struct_4(Struct_2(u_input.b.zx, firstTrailingBit(min(~vec4<i32>(global3[_wgslsmith_index_u32(8440u, 23u)], global3[_wgslsmith_index_u32(global0.x, 23u)], -48661i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(var_2, 23u)], global3[_wgslsmith_index_u32(u_input.a, 23u)], global3[_wgslsmith_index_u32(68215u, 23u)]), vec4<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33386u, 31u)], 23u)], global3[_wgslsmith_index_u32(u_input.b.x, 23u)], 0i, 0i)))), Struct_1(var_1.a, 19386u), countOneBits(select(firstLeadingBit(vec4<u32>(45387u, global1.x, 35297u, global2[_wgslsmith_index_u32(0u, 31u)])), vec4<u32>(389u, var_1.b, 4294967295u, 973u), all(vec4<bool>(true, false, false, true)))), firstLeadingBit(~vec3<u32>(34773u, 66174u, 22017u))), Struct_3(var_1, reverseBits(vec4<u32>(var_2 & 35036u, ~global1.x, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 46138u, 15526u, global1.x), vec4<u32>(1u, var_1.b, global2[_wgslsmith_index_u32(var_2, 31u)], var_2)))), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(9253u, 23u)], 0i), vec2<i32>(-29526i, 1i)) >> (_wgslsmith_add_vec2_u32(u_input.b.xy, global0.xz) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(max(var_1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(192f, var_1.a.x, var_1.a.x, var_1.a.x) * var_1.a))), firstTrailingBit(1u)), _wgslsmith_mod_vec2_u32((vec2<u32>(global0.x, var_2) >> (vec2<u32>(global1.x, u_input.b.x) % vec2<u32>(32u))) ^ (global0.zy & global4[_wgslsmith_index_u32(84911u, 24u)]), global0.yx)), Struct_2(~countOneBits(firstTrailingBit(vec2<u32>(1u, var_1.b))), vec4<i32>(-4480i, global3[_wgslsmith_index_u32((var_2 ^ 465u) >> (~var_2 % 32u), 23u)], _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(50995u, 23u)], global3[_wgslsmith_index_u32(10095u, 23u)], -2147483647i), vec4<i32>(20121i, -18216i, 17225i, 1i)), -1i), global3[_wgslsmith_index_u32(select(max(var_2, 4294967295u), _wgslsmith_mult_u32(var_2, 27856u), true), 23u)]), var_1, ~_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, 4294967295u, global0.x, 4294967295u), ~vec4<u32>(4294967295u, var_1.b, var_1.b, global2[_wgslsmith_index_u32(var_2, 31u)])), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_2, global0.x)), vec3<u32>(reverseBits(u_input.b.x), 4294967295u, 13309u))));
    return ~vec2<u32>(_wgslsmith_clamp_u32(~0u, ~4294967295u, 1u), _wgslsmith_div_u32(~37463u, _wgslsmith_dot_vec4_u32(~vec4<u32>(34973u, 20229u, global2[_wgslsmith_index_u32(var_1.b, 31u)], global0.x), countOneBits(var_4.c.d))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> vec2<f32> {
    global3 = array<i32, 23>();
    let var_0 = Struct_2(select(countOneBits(vec2<u32>(53245u, global1.x)), global0.yz >> (u_input.b.zz % vec2<u32>(32u)), all(vec4<bool>(true, true, true, true)) | (_wgslsmith_sub_i32(-1i, arg_0.x) < (global3[_wgslsmith_index_u32(57279u, 23u)] >> (42328u % 32u)))), select(-(select(vec4<i32>(global3[_wgslsmith_index_u32(35530u, 23u)], -1741i, -2147483647i, arg_0.x), arg_0, vec4<bool>(true, false, false, false)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 31u)], 31u)], arg_1, arg_1, global0.x), vec4<u32>(45772u, global0.x, u_input.b.x, 4294967295u)) % vec4<u32>(32u))), arg_0 | _wgslsmith_mult_vec4_i32(max(arg_0, vec4<i32>(-1i, global3[_wgslsmith_index_u32(0u, 23u)], -1i, -86533i)), vec4<i32>(0i, global3[_wgslsmith_index_u32(global1.x, 23u)], arg_0.x, arg_0.x)), true), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(-900f, 386f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) * _wgslsmith_f_op_f32(trunc(443f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -2621f))), reverseBits((global1.x << (global0.x % 32u)) | u_input.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(~global1.x), 0u, global0.x & global0.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.zz, vec2<u32>(1u, 1u)), global0.x)), select(~vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 31u)], 26480u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, arg_1, global0.x, 65193u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 31u)], 27679u, u_input.b.x), vec4<u32>(global1.x, global2[_wgslsmith_index_u32(1u, 31u)], 0u, 51u)), vec4<u32>(0u, 4294967295u, 13433u, 1u)), true)), _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(17969u, global0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)])), ~u_input.b), _wgslsmith_add_vec3_u32(select(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, 1u, 0u), vec3<u32>(4294967295u, u_input.b.x, global1.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), vec3<u32>(arg_1, 30036u | global1.x, 15363u))));
    global1 = u_input.b.yx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1134f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1600f)));
    let var_2 = _wgslsmith_mult_u32(global1.x, _wgslsmith_mult_u32(global0.x, 3425u));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-249f, var_0.c.a.x), vec2<f32>(-823f, -1091f))) - vec2<f32>(_wgslsmith_f_op_f32(var_0.c.a.x * -1875f), 2021f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -1066f)), var_0.c.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), -2589f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: bool, arg_3: Struct_5) -> vec2<f32> {
    var var_0 = reverseBits(reverseBits(min(~(-5243i), global3[_wgslsmith_index_u32(global0.x, 23u)]))) ^ ~firstTrailingBit(arg_1.a.b.c.x);
    let var_1 = false;
    global2 = array<u32, 31>();
    global2 = array<u32, 31>();
    global2 = array<u32, 31>();
    return _wgslsmith_f_op_vec2_f32(func_4(~arg_1.a.a.b, _wgslsmith_dot_vec2_u32(~min(arg_3.a.b.b.wy ^ vec2<u32>(1u, 4294967295u), abs(global0.zy)), func_3())));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = firstLeadingBit(max(-arg_2.x, -13057i));
    let var_1 = ~u_input.b.zx;
    var var_2 = true;
    global4 = array<vec2<u32>, 24>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-197f, 1491f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(false, false, false, false), Struct_5(Struct_4(Struct_2(vec2<u32>(global0.x, 10147u), vec4<i32>(-572i, -2147483647i, 29825i, 40802i), Struct_1(vec4<f32>(-1106f, -688f, -1197f, 1000f), 0u), vec4<u32>(global1.x, 0u, 1u, var_1.x), u_input.b), Struct_3(Struct_1(vec4<f32>(-1713f, -217f, -568f, 555f), 0u), vec4<u32>(75935u, 4294967295u, 30757u, 58380u), arg_1.zx, Struct_1(vec4<f32>(558f, -1348f, 950f, -159f), 12639u), global0.zy), Struct_2(global4[_wgslsmith_index_u32(4294967295u, 24u)], vec4<i32>(79040i, -1067i, 1i, 8059i), Struct_1(vec4<f32>(836f, -1000f, -1210f, 1000f), global0.x), vec4<u32>(0u, 41331u, u_input.b.x, u_input.b.x), u_input.b)), vec3<f32>(2063f, 760f, 160f)), true, Struct_5(Struct_4(Struct_2(var_1, vec4<i32>(17945i, arg_1.x, 27646i, -2147483647i), Struct_1(vec4<f32>(-823f, -1029f, 295f, -1272f), 4294967295u), vec4<u32>(31317u, var_1.x, var_1.x, global1.x), u_input.b), Struct_3(Struct_1(vec4<f32>(-1872f, -329f, -368f, -749f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)]), vec4<u32>(90256u, u_input.b.x, 48133u, global0.x), vec2<i32>(1i, -17990i), Struct_1(vec4<f32>(1078f, -899f, 240f, 372f), global1.x), u_input.b.yz), Struct_2(vec2<u32>(0u, u_input.b.x), vec4<i32>(22179i, 2845i, global3[_wgslsmith_index_u32(41622u, 23u)], -5859i), Struct_1(vec4<f32>(323f, 603f, -700f, -895f), 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 8386u), vec3<u32>(5949u, 4294967295u, 0u))), vec3<f32>(141f, -1533f, -1931f)))), vec2<f32>(-693f, 2256f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    return Struct_2(u_input.b.yx | ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), select(global0.xx, vec2<u32>(8601u, var_1.x), vec2<bool>(true, false))), abs(-vec4<i32>(_wgslsmith_clamp_i32(-2945i, 0i, 2147483647i), i32(-1i) * -5192i, global3[_wgslsmith_index_u32(global0.x, 23u)], reverseBits(9393i))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-960f, -740f, var_3.x, _wgslsmith_f_op_f32(abs(var_3.x))))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(27594u, global1.x, global2[_wgslsmith_index_u32(global1.x, 31u)], 0u), vec4<u32>(26295u, var_1.x, var_1.x, global1.x)), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u))), vec4<u32>(global1.x, abs(_wgslsmith_mult_u32(0u, global0.x)), 0u, ~(~33955u)) << (vec4<u32>(~157216u | select(var_1.x, 30186u, false), firstTrailingBit(reverseBits(9916u)), ~(~0u), global1.x) % vec4<u32>(32u)), countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(29669u, 31u)], global1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 25173u), vec3<u32>(104751u, global2[_wgslsmith_index_u32(10235u, 31u)], 5438u)), vec3<u32>(38371u, 1u, 22608u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_4(func_1(~1i, -vec3<i32>(-9003i, 0i, 23020i), vec2<i32>(min(global3[_wgslsmith_index_u32(global0.x, 23u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 31u)], 23u)]), countOneBits(10454i))), Struct_3(func_1(max(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39107u, 31u)], 23u)], -2147483647i), vec3<i32>(-36462i, global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 23u)]), ~vec2<i32>(1i, global3[_wgslsmith_index_u32(11529u, 23u)])).c, ~max(vec4<u32>(1u, u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 31u)], 31u)], 31u)], global0.x), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global1.x, 17495u, 4294967295u)), vec2<i32>(-1i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21968u, 31u)], 23u)], -72391i)), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(19433i, 26833i, 1i), vec3<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 23u)], global3[_wgslsmith_index_u32(u_input.b.x, 23u)], -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 23u)], -1i, global3[_wgslsmith_index_u32(global0.x, 23u)]), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(19064u, 23u)]), vec3<i32>(global3[_wgslsmith_index_u32(global1.x, 23u)], 0i, -1i)), -vec2<i32>(global3[_wgslsmith_index_u32(67880u, 23u)], 0i)).c, u_input.b.xy), func_1(-_wgslsmith_sub_i32(19351i, global3[_wgslsmith_index_u32(global1.x, 23u)]), vec3<i32>(global3[_wgslsmith_index_u32(6778u, 23u)] | -1i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global1.x, 23u)], 1i), -global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 31u)], 23u)]), vec2<i32>(2147483647i, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(-691f + _wgslsmith_f_op_f32(-994f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f)) - _wgslsmith_f_op_f32(-1079f * _wgslsmith_div_f32(1000f, -1746f))), -1455f));
    global4 = array<vec2<u32>, 24>();
    let var_1 = vec2<i32>(30244i, firstTrailingBit(_wgslsmith_clamp_i32(-9830i | _wgslsmith_mult_i32(var_0.a.a.b.x, -19794i), global3[_wgslsmith_index_u32(0u, 23u)], -28425i)));
    var var_2 = Struct_3(func_1(11158i, ~vec3<i32>(-1i, global3[_wgslsmith_index_u32(global1.x, 23u)], 2147483647i) & select(var_0.a.c.b.zxy << (vec3<u32>(global2[_wgslsmith_index_u32(0u, 31u)], 9722u, 22074u) % vec3<u32>(32u)), -var_0.a.c.b.yxz, 1651f < var_0.a.a.c.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(~global3[_wgslsmith_index_u32(1u, 23u)], ~(-2147483647i)), vec2<i32>(reverseBits(-10100i), 34677i))).c, var_0.a.a.d, ~(-_wgslsmith_mod_vec2_i32(~var_1, _wgslsmith_mod_vec2_i32(var_1, var_1))), func_1(select(global3[_wgslsmith_index_u32(~0u, 23u)], var_0.a.a.b.x, true) >> (func_1(~var_0.a.a.b.x, vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], var_0.a.b.c.x, -14100i), var_0.a.a.b.wz).a.x % 32u), vec3<i32>(1i, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(global1.x, 23u)] >> (15793u % 32u), _wgslsmith_clamp_i32(var_1.x, -20669i, 23031i)), var_1.x), reverseBits(~var_1)).c, _wgslsmith_div_vec2_u32(global0.yy, vec2<u32>(1u, global0.x)));
    let var_3 = Struct_3(var_2.d, vec4<u32>(select(min(~var_0.a.b.e.x, min(10072u, 7193u)), 24416u, true), 1u, ~(~var_0.a.a.e.x), 19974u), vec2<i32>(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global3[_wgslsmith_index_u32(global1.x, 23u)], 17089i), var_0.a.a.b.xyz)), ~_wgslsmith_mod_vec3_i32(var_0.a.c.b.wzz, vec3<i32>(var_1.x, var_1.x, var_2.c.x))), ~abs(_wgslsmith_div_i32(var_0.a.b.c.x, 12404i))), func_1(-1395i, vec3<i32>(~(-18548i), var_2.c.x, _wgslsmith_dot_vec3_i32(var_0.a.a.b.zww, vec3<i32>(var_0.a.c.b.x, var_0.a.b.c.x, -26478i)) & ~var_2.c.x), -(var_1 << (global0.zz % vec2<u32>(32u))) | var_1).c, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global0.x, ~var_2.a.b), global2[_wgslsmith_index_u32(0u, 31u)]), countOneBits(global4[_wgslsmith_index_u32(min(~global1.x, min(var_2.d.b, 1u)), 24u)])));
    let var_4 = true;
    global1 = (~countOneBits(u_input.b.xx | var_3.b.xz) & (abs(vec2<u32>(0u, var_3.b.x)) >> (abs(var_0.a.b.b.xz) % vec2<u32>(32u)))) << (vec2<u32>(~global2[_wgslsmith_index_u32(4294967295u, 31u)], ~(~1u ^ _wgslsmith_sub_u32(var_0.a.b.e.x, 1u))) % vec2<u32>(32u));
    var var_5 = ~vec3<i32>(-23735i, _wgslsmith_clamp_i32(firstLeadingBit(~global3[_wgslsmith_index_u32(var_3.d.b, 23u)]), global3[_wgslsmith_index_u32(~0u, 23u)] & ~var_1.x, var_2.c.x), var_2.c.x);
    var_5 = var_0.a.c.b.xww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_0.a.a.c.a.x)), var_0.a.c.b);
}

