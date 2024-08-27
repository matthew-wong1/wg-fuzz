struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c.b, arg_1.b.b, arg_0.x, arg_2.b), vec4<f32>(arg_2.b, 634f, arg_2.b, -2295f)))) + _wgslsmith_f_op_vec4_f32(ceil(arg_0)))) * arg_0);
    let var_1 = arg_2.c.x;
    let var_2 = arg_0.ww;
    var var_3 = _wgslsmith_f_op_vec3_f32(var_0.xyx * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) - arg_2.b), -1005f, -412f));
    var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -765f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(max(-1618f, var_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1349f, -902f)))), _wgslsmith_f_op_vec3_f32(-var_0.wwz), _wgslsmith_f_op_f32(f32(-1f) * -478f) != arg_2.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -1085f, arg_0.x) - arg_0.yzx))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-308f, _wgslsmith_f_op_f32(floor(arg_1.c.b)), _wgslsmith_f_op_f32(-var_3.x)))))));
    return any(select(!(!select(arg_2.c.yy, vec2<bool>(true, var_1), false)), !arg_1.c.c.yz, select(arg_1.b.c.yx, !select(arg_2.c.zx, arg_1.c.c.yx, var_1), !arg_1.c.c.xx)));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(vec3<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(36524u, 96314u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 13691u, arg_0.x)), vec4<u32>(u_input.b, 36149u, u_input.b, 4294967295u)) ^ ~1u, firstLeadingBit(arg_0.x)), Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 0u), ~vec4<u32>(4294967295u, 1u, 0u, 16730u))), 866f, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), func_3(vec4<f32>(-712f, arg_1, arg_1, arg_1), Struct_2(vec3<u32>(u_input.b, u_input.b, 0u), Struct_1(vec4<u32>(19360u, arg_0.x, 48644u, u_input.b), 1582f, vec3<bool>(false, true, true), 15047u), Struct_1(vec4<u32>(0u, arg_0.x, u_input.b, 25891u), 282f, vec3<bool>(true, true, true), 19223u), false), Struct_1(vec4<u32>(arg_0.x, 4294967295u, u_input.b, 88558u), 579f, vec3<bool>(false, true, true), 0u))), ~(~0u)), Struct_1(vec4<u32>(22217u, u_input.b, arg_0.x, 4294967295u), arg_1, !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), (arg_0.x | ~arg_0.x) >> (~u_input.b % 32u)), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_1)), -108f, _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(-535f - 498f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, 1512f) * vec4<f32>(883f, -266f, -1000f, arg_1)))), Struct_2(vec3<u32>(31583u, ~0u, ~4294967295u), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(18704u, 32261u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 31515u, 12767u, arg_0.x), vec4<u32>(arg_0.x, u_input.b, 11037u, arg_0.x)), arg_1, vec3<bool>(true, true, true), 18012u), Struct_1(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u), 1073f, vec3<bool>(true, true, true), ~0u), any(vec2<bool>(true, true))), Struct_1(~vec4<u32>(23029u, 10543u, 23493u, 23703u), arg_1, vec3<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(false, true)), func_3(vec4<f32>(arg_1, arg_1, arg_1, -1313f), Struct_2(vec3<u32>(1u, arg_0.x, u_input.b), Struct_1(vec4<u32>(u_input.b, 1u, 1u, 4294967295u), -548f, vec3<bool>(true, false, true), 20783u), Struct_1(vec4<u32>(1u, arg_0.x, arg_0.x, u_input.b), -806f, vec3<bool>(false, false, false), u_input.b), true), Struct_1(vec4<u32>(22887u, u_input.b, u_input.b, 0u), -945f, vec3<bool>(true, true, false), arg_0.x))), ~(~15467u))));
    let var_1 = Struct_2(max(arg_0, select(select(vec3<u32>(arg_0.x, u_input.b, var_0.b.a.x), vec3<u32>(arg_0.x, var_0.b.a.x, u_input.b), true), ~arg_0, var_0.b.c.x)) >> (~abs(abs(arg_0)) % vec3<u32>(32u)), Struct_1(vec4<u32>(14860u, 1u, ~_wgslsmith_mod_u32(5172u, u_input.b), _wgslsmith_clamp_u32(39534u, ~80297u, max(12568u, u_input.b))), var_0.b.b, vec3<bool>(var_0.d, false, u_input.a != u_input.a), _wgslsmith_div_u32(var_0.c.d, firstTrailingBit(abs(u_input.b)))), Struct_1(vec4<u32>(~(~u_input.b), 45605u, 4294967295u >> (firstLeadingBit(1u) % 32u), _wgslsmith_div_u32(u_input.b ^ arg_0.x, firstLeadingBit(arg_0.x))), 1f, var_0.c.c, _wgslsmith_mult_u32(min(35943u, abs(arg_0.x)), arg_0.x)), _wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.b, 26676u), ~_wgslsmith_add_u32(u_input.b, 4294967295u)) >= _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_0, arg_0), arg_0 & vec3<u32>(var_0.c.a.x, 1u, u_input.b)), abs(arg_0) | _wgslsmith_div_vec3_u32(arg_0, vec3<u32>(u_input.b, var_0.b.d, u_input.b))));
    let var_2 = ~_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -2147483647i, ~u_input.a, u_input.a), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c.xyz, u_input.c.wyw), 29303i, u_input.a, _wgslsmith_add_i32(2147483647i, u_input.a))));
    return Struct_2(var_0.b.a.yzw, var_1.b, Struct_1(abs(vec4<u32>(arg_0.x ^ 29658u, 1u, ~73020u, var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)))), vec3<bool>(true, all(select(vec3<bool>(var_0.c.c.x, var_0.c.c.x, var_1.b.c.x), var_1.b.c, true)), var_0.c.c.x), abs(34223u)), !(true && (_wgslsmith_dot_vec4_i32(u_input.c, u_input.c) >= u_input.c.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = true;
    return func_2(abs(_wgslsmith_div_vec3_u32(vec3<u32>(~arg_2.x, arg_2.x, _wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(8627u, arg_2.x))), vec3<u32>(arg_2.x, ~39312u, firstTrailingBit(arg_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-290f, _wgslsmith_f_op_f32(f32(-1f) * -1376f), arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1548f, -1324f)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = func_2(~firstLeadingBit(vec3<u32>(99921u, u_input.b, 1u)), _wgslsmith_f_op_f32(round(arg_3.x))).b;
    var var_1 = ~var_0.a.x;
    var_1 = 7694u;
    let var_2 = ~u_input.c.yy ^ reverseBits(_wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, u_input.c.x), vec2<i32>(arg_1.x, 27659i), vec2<i32>(1007i, 1i))), arg_1.yx));
    var_1 = ~abs(1u);
    return _wgslsmith_mod_vec4_u32(~arg_0.c.a, firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.b, var_0.a.x, u_input.b, 13227u)) >> (~var_0.a % vec4<u32>(32u))) >> (vec4<u32>(var_0.a.x, ~1u, 0u, ~(~1u)) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = firstTrailingBit(firstLeadingBit(u_input.c.x));
    let var_1 = arg_2.b.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-810f, -545f, -1170f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_1, -435f))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-976f, -737f, -531f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(568f, -1068f, arg_0.b)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -783f))), 231f, -1000f)));
    var_0 = firstLeadingBit(~(36438i << (arg_1 % 32u)));
    let var_3 = arg_2.d;
    return StorageBuffer(vec4<i32>(2147483647i, 32575i, -u_input.c.x, 38602i), arg_0.a.xxw, vec2<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(8059u, ~562u), ~(~arg_1))), _wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, arg_1), ~arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(func_4(func_1(select(u_input.c.yy, u_input.c.wz, vec2<bool>(false, false)), vec2<bool>(true, true), vec2<u32>(u_input.b, 4294967295u)), vec4<i32>(u_input.a, u_input.c.x, 79081i, u_input.c.x) & (u_input.c >> (vec4<u32>(u_input.b, u_input.b, 32329u, u_input.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-1052f - _wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1138f, -144f)))), 1031f, vec3<bool>(true, func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a), u_input.c.wy), select(vec2<bool>(false, false), vec2<bool>(false, false), true), firstLeadingBit(vec2<u32>(20289u, u_input.b))).b.c.x, func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.a, u_input.c.x)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), ~vec2<u32>(u_input.b, 57694u)).d), ~_wgslsmith_sub_u32(~4490u, u_input.b)), ~14107u, func_1(u_input.c.zz, vec2<bool>(true, true), ~(~firstTrailingBit(vec2<u32>(0u, 22835u)))));
}

