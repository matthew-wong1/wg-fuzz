struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(127f, true, vec4<bool>(true, false, false, true), 9301i), Struct_1(-1000f, false, vec4<bool>(false, true, true, false), i32(-2147483648)), Struct_1(-1000f, true, vec4<bool>(false, true, false, true), -64162i), Struct_1(-257f, false, vec4<bool>(false, false, false, false), -92045i));

var<private> global1: array<vec3<bool>, 14>;

var<private> global2: i32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.b;
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.a, 838f, 201f), _wgslsmith_div_vec3_f32(var_1.d, vec3<f32>(151f, arg_1, 619f))), arg_2.d))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.d + _wgslsmith_f_op_vec3_f32(-arg_2.d)))), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(466f)))), _wgslsmith_f_op_f32(min(-652f, _wgslsmith_div_f32(-397f, _wgslsmith_f_op_f32(711f * var_1.a.x)))), 276f), _wgslsmith_mod_u32(~arg_0.x, 56640u) < ~_wgslsmith_dot_vec2_u32(vec2<u32>(101194u, 4294967295u), vec2<u32>(82814u, u_input.a.x)));
    var var_4 = ~(~((vec4<u32>(u_input.c.x, arg_0.x, arg_0.x, 1u) >> (max(vec4<u32>(arg_0.x, u_input.c.x, u_input.c.x, 1u), vec4<u32>(0u, 75193u, arg_0.x, 5528u)) % vec4<u32>(32u))) >> (~min(vec4<u32>(59754u, u_input.c.x, u_input.a.x, u_input.c.x), vec4<u32>(1u, 12270u, 33210u, u_input.b)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), arg_2.d.x, any(arg_2.b.c.yzw))))))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1196f, -416f), vec2<f32>(1900f, 104f), vec2<bool>(true, true))))))), global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 4u)], u_input.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1034f, 335f, -912f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -547f, -553f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(679f, -315f, -230f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-625f, -135f, -1546f) - vec3<f32>(1687f, 213f, 1543f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1634f, 214f) * vec3<f32>(1235f, 1204f, 498f)), arg_0 < 4815u))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.a)) - _wgslsmith_f_op_f32(703f * 522f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(214f, var_0.b.a))))), var_0.b, reverseBits(u_input.d), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.a, _wgslsmith_f_op_f32(min(-743f, var_0.d.x)), Struct_3(vec2<f32>(var_0.b.a, 1000f), Struct_1(-1000f, var_0.b.c.x, var_0.b.c, u_input.d), -1i, vec3<f32>(var_0.b.a, 664f, -1089f)))), _wgslsmith_f_op_f32(func_3(~vec2<u32>(25814u, 1u), var_0.b.a, Struct_3(var_0.d.yx, global0[_wgslsmith_index_u32(u_input.b, 4u)], var_0.c, vec3<f32>(var_0.d.x, 954f, var_0.b.a)))), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.b.a, -632f) * vec3<f32>(617f, var_0.d.x, var_0.b.a)) * _wgslsmith_f_op_vec3_f32(step(var_0.d, vec3<f32>(281f, var_0.a.x, -1109f))))))));
    var var_2 = vec4<u32>(_wgslsmith_add_u32(~(~(~4294967295u)), ~(~abs(4294967295u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b, 4294967295u, u_input.a.x), ~(~vec4<u32>(1u, 24514u, 38039u, 54481u))) | ~_wgslsmith_add_u32(~u_input.b, _wgslsmith_div_u32(arg_0, u_input.c.x)), ~_wgslsmith_clamp_u32(abs(~u_input.c.x), u_input.b, ~abs(arg_0)), ~(~50229u));
    var var_3 = firstLeadingBit(~(101531u & ~arg_0));
    let var_4 = vec2<i32>(~firstTrailingBit(1i), -var_0.c);
    return all(select(select(vec2<bool>(var_1.b.d == -60055i, var_1.b.c.x), select(!var_1.b.c.zz, var_0.b.c.yw, all(vec2<bool>(false, var_0.b.b))), true), vec2<bool>(var_0.b.b, var_0.b.b), var_1.b.c.zw));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> Struct_3 {
    global1 = array<vec3<bool>, 14>();
    global2 = _wgslsmith_add_i32(u_input.d, u_input.d);
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-1146f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1240f)))), _wgslsmith_div_f32(1202f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(567f))))), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(683f - 1460f), _wgslsmith_f_op_f32(abs(-206f)), _wgslsmith_div_f32(-545f, 1000f), _wgslsmith_f_op_f32(sign(-485f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(513f)), -751f, _wgslsmith_f_op_f32(-186f + 719f), _wgslsmith_f_op_f32(1000f + 1434f)), any(!global1[_wgslsmith_index_u32(u_input.b, 14u)])))), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1366f, var_0.b.x));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.b.zy * var_0.a.xz), var_0.b.wy))), Struct_1(1000f, false, !select(select(vec4<bool>(var_0.c, arg_2.x, true, false), vec4<bool>(arg_2.x, false, var_0.c, arg_2.x), vec4<bool>(false, false, arg_2.x, arg_2.x)), !vec4<bool>(false, arg_3, arg_2.x, arg_3), var_1.x != var_1.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, arg_0, arg_0)), vec3<i32>(_wgslsmith_mult_i32(-1i, 1i), _wgslsmith_mult_i32(arg_0, u_input.d), -49453i))), ~(-18301i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 1656f, 301f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.b.x, 1746f)) + vec3<f32>(var_1.x, var_1.x, var_1.x)), vec3<bool>(all(vec2<bool>(var_0.c, arg_2.x)), var_0.c, true))))));
    return Struct_3(var_0.a.zx, var_2.b, 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(638f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_2.a.x)))), _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, var_1.x, var_2.a.x), var_2.d)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = func_4(min(-u_input.d, _wgslsmith_mod_i32(3533i, arg_0.x)), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(30498u, 54305u, u_input.b, u_input.a.x)), ~(vec4<u32>(u_input.a.x, 20588u, 0u, u_input.a.x) ^ vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, 60416u)) >> (vec4<u32>(~90037u, 1u << (u_input.a.x % 32u), u_input.a.x & 18728u, 1u) % vec4<u32>(32u))), select(select(vec2<bool>(true, any(vec3<bool>(false, arg_1.b, arg_1.b))), vec2<bool>(func_2(u_input.c.x), arg_1.b), vec2<bool>(true, func_2(20679u))), select(select(vec2<bool>(arg_1.c.x, false), arg_1.c.wx, !arg_1.c.wx), !vec2<bool>(arg_1.b, false), !all(global1[_wgslsmith_index_u32(u_input.b, 14u)])), ~u_input.b > 0u), any(vec4<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(true, true, arg_1.c.x, false)), arg_1.c.x, !arg_1.c.x)) != arg_1.b);
    var var_1 = u_input.c;
    var_0 = func_4(1i, min(22849u, 4294967295u), var_0.b.c.wy, any(vec3<bool>(~var_0.b.d != ~arg_1.d, !(!arg_1.b), var_0.b.c.x)));
    global0 = array<Struct_1, 4>();
    let var_2 = ~select(~(~u_input.c.zz) >> (var_1.yx % vec2<u32>(32u)), ~abs(_wgslsmith_add_vec2_u32(var_1.xx, u_input.a)), !(max(1i, arg_1.d) <= _wgslsmith_dot_vec2_i32(arg_0.wy, arg_0.zx)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, (-2147483647i ^ reverseBits(arg_0.x)) >> (9958u % 32u)), -_wgslsmith_div_vec2_i32(firstLeadingBit(arg_0.wy) << (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, arg_0.x), vec2<i32>(u_input.d, u_input.d) & arg_0.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-260f, 429f)) * 262f)));
    let var_1 = _wgslsmith_clamp_vec4_i32(-countOneBits(-vec4<i32>(-7527i, u_input.d, u_input.d, u_input.d)), vec4<i32>(~(~(-1i)), func_1(vec4<i32>(u_input.d, u_input.d, -1i, u_input.d) | vec4<i32>(0i, u_input.d, u_input.d, -8148i), global0[_wgslsmith_index_u32(u_input.b ^ u_input.c.x, 4u)]), abs(0i), u_input.d) ^ firstTrailingBit(abs(vec4<i32>(-31698i, 0i, 1126i, u_input.d))), vec4<i32>(u_input.d, u_input.d, ~(~_wgslsmith_mod_i32(u_input.d, u_input.d)), _wgslsmith_clamp_i32(u_input.d, 35102i, ~(-59590i))));
    let var_2 = max(var_1.yzw, var_1.wzz);
    global1 = array<vec3<bool>, 14>();
    let var_3 = ~(~min(vec2<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), vec2<u32>(96710u | u_input.c.x, 1u)));
    let var_4 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(0u), var_3.x << (4294967295u % 32u), 0u, ~var_3.x) & abs(vec4<u32>(u_input.a.x, 0u, var_3.x, u_input.c.x) ^ vec4<u32>(var_3.x, u_input.c.x, 63776u, u_input.b)), vec4<u32>(var_3.x, firstLeadingBit(countOneBits(59467u)), _wgslsmith_mult_u32(1u, u_input.b), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~(max(vec4<u32>(var_3.x, var_4, var_3.x, 0u), vec4<u32>(u_input.b, var_3.x, 66543u, 4294967295u)) & select(vec4<u32>(u_input.a.x, var_3.x, 4294967295u, 1u), vec4<u32>(var_3.x, var_4, var_3.x, 30647u), vec4<bool>(false, false, true, false))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 25799u, var_4, var_4), vec4<u32>(u_input.b, 1u, 0u, 1u))), vec4<u32>(_wgslsmith_clamp_u32(var_4, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.x), var_3), u_input.c.x), 92514u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, var_3), vec2<u32>(1u, 149u) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), 60336u)), ~var_4);
}

