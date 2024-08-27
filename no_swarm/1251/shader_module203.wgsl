struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -14887i;

var<private> global1: array<i32, 3>;

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, 50899i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -1i), vec2<i32>(-24503i, -36915i), vec2<i32>(0i, 25527i), vec2<i32>(60881i, 15860i), vec2<i32>(-21960i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(10596i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 25611i), vec2<i32>(-1i, -47109i), vec2<i32>(-1i, -7006i), vec2<i32>(2147483647i, -1i), vec2<i32>(-20051i, -18420i), vec2<i32>(63589i, i32(-2147483648)), vec2<i32>(-5440i, -1i), vec2<i32>(29774i, 3384i), vec2<i32>(-14644i, 13433i), vec2<i32>(-35246i, i32(-2147483648)), vec2<i32>(-2569i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), -58976i), vec2<i32>(-1i, 1i));

var<private> global3: array<i32, 11> = array<i32, 11>(6290i, 2147483647i, -50577i, -39599i, 39095i, -9740i, -1i, -14682i, 0i, 30779i, 2147483647i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global3 = array<i32, 11>();
    global3 = array<i32, 11>();
    var var_0 = arg_0.x;
    var var_1 = 26345i;
    global2 = array<vec2<i32>, 26>();
    return true;
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = global3[_wgslsmith_index_u32(~(~abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0.xx))), 11u)];
    global2 = array<vec2<i32>, 26>();
    var var_0 = !vec3<bool>(any(vec4<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(false, false)), all(vec3<bool>(true, false, false)), false)), (any(vec2<bool>(false, true)) || any(vec3<bool>(false, false, true))) | true, func_2(global2[_wgslsmith_index_u32(abs(arg_0.x), 26u)]));
    global3 = array<i32, 11>();
    global1 = array<i32, 3>();
    return ~(~min(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 20760u), abs(countOneBits(arg_0.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(1i, global1[_wgslsmith_index_u32(arg_2, 3u)], -u_input.a.x, i32(-1i) * -1i)), global1[_wgslsmith_index_u32(23424u, 3u)], reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(arg_0.x, 0u), arg_1.c.x), 3u)])), firstLeadingBit(vec3<i32>(i32(-1i) * -1i, ~global1[_wgslsmith_index_u32(arg_0.x, 3u)], -40848i) >> (countOneBits(~arg_1.c.www) % vec3<u32>(32u))));
    global2 = array<vec2<i32>, 26>();
    global0 = global3[_wgslsmith_index_u32(arg_0.x >> (_wgslsmith_add_u32(_wgslsmith_add_u32(~arg_2, ~(~arg_0.x)), arg_2) % 32u), 11u)];
    global3 = array<i32, 11>();
    var var_1 = select(!vec3<bool>(true, !(-51283i >= global3[_wgslsmith_index_u32(arg_2, 11u)]), func_2(vec2<i32>(u_input.b, -30135i))), vec3<bool>(max(abs(-10150i), 0i) == -global1[_wgslsmith_index_u32(arg_0.x, 3u)], true, any(vec4<bool>(arg_1.a, true, false, arg_1.a)) | true), vec3<bool>(!(!any(vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a))), _wgslsmith_f_op_f32(-arg_1.b) <= 813f, false));
    return reverseBits(reverseBits(min(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(24514u, arg_0.x, 4294967295u, 1u)), abs(vec4<u32>(43891u, 8575u, 0u, arg_1.c.x))), ~vec4<u32>(arg_2, 63797u, arg_2, 0u))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = select(all(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), true, func_2(abs(u_input.a.xw << (firstTrailingBit(arg_1.c.wz) % vec2<u32>(32u)))));
    var var_1 = Struct_2(arg_1.c, ~(~u_input.a), arg_1, Struct_1(~(~global3[_wgslsmith_index_u32(arg_0.x, 11u)]) < -8971i, 185f, func_4(vec4<u32>(~arg_0.x, ~73416u, arg_0.x >> (0u % 32u), _wgslsmith_div_u32(arg_1.c.x, arg_1.c.x)), arg_1, func_3(vec4<u32>(18509u, 0u, arg_0.x, 4294967295u)))), select(vec2<bool>(true, arg_3), !select(select(vec2<bool>(var_0, false), vec2<bool>(arg_3, arg_3), vec2<bool>(var_0, true)), select(vec2<bool>(arg_1.a, arg_3), vec2<bool>(true, false), vec2<bool>(true, arg_1.a)), vec2<bool>(var_0, true)), _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(floor(arg_1.b))) != _wgslsmith_f_op_f32(f32(-1f) * -251f)));
    var var_2 = ~firstTrailingBit(~(-(u_input.a.ww & global2[_wgslsmith_index_u32(4294967295u, 26u)])));
    let var_3 = arg_3;
    let var_4 = 4294967295u;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.d.b - arg_1.b)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1254f + arg_0.x));
    var var_1 = Struct_1(all(vec4<bool>(select(false, func_2(vec2<i32>(7486i, u_input.b)), true), true, !(arg_1 >= global1[_wgslsmith_index_u32(49218u, 3u)]), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_f32(-var_0), ~select(func_4(~vec4<u32>(53741u, 0u, 1u, 1u), Struct_1(false, arg_0.x, vec4<u32>(1u, 17179u, 4294967295u, 29689u)), ~27449u), vec4<u32>(1u, 1u, 1u, 1u), abs(u_input.b) <= ~(-2147483647i)));
    var var_2 = Struct_2(firstTrailingBit(~vec4<u32>(var_1.c.x, _wgslsmith_dot_vec2_u32(var_1.c.xy, vec2<u32>(var_1.c.x, 1u)), var_1.c.x & 1u, 13297u)), _wgslsmith_sub_vec4_i32(vec4<i32>(max(-52183i, arg_1), ~global3[_wgslsmith_index_u32(1u, 11u)], -2147483647i, 45954i) ^ _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1, global1[_wgslsmith_index_u32(91067u, 3u)], arg_1, 0i), u_input.a >> (vec4<u32>(1924u, var_1.c.x, var_1.c.x, 1u) % vec4<u32>(32u))), vec4<i32>(-arg_1 << (~var_1.c.x % 32u), -(u_input.c | 0i), abs(i32(-1i) * -1i), global3[_wgslsmith_index_u32(16398u, 11u)])), Struct_1(!var_1.a, var_1.b, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(var_1.c, ~vec4<u32>(var_1.c.x, 66488u, var_1.c.x, var_1.c.x)), vec4<u32>(~0u, var_1.c.x, var_1.c.x, ~var_1.c.x))), Struct_1(!var_1.a | true, var_0, vec4<u32>(50334u, _wgslsmith_dot_vec2_u32(~vec2<u32>(29172u, 2782u), var_1.c.zz), _wgslsmith_div_u32(select(var_1.c.x, 26683u, true), _wgslsmith_sub_u32(2863u, var_1.c.x)), ~(~var_1.c.x))), vec2<bool>(all(select(!vec4<bool>(false, false, var_1.a, var_1.a), !vec4<bool>(true, var_1.a, var_1.a, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_1.a, true, var_1.a), true))), select(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(11451i, 0i), global2[_wgslsmith_index_u32(0u, 26u)])), any(vec4<bool>(false, var_1.a, var_1.a, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(1u, 11u)]), vec2<i32>(-28218i, global3[_wgslsmith_index_u32(var_1.c.x, 11u)])) <= ~arg_1)));
    let var_3 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.x, ~(~var_1.c.x), ~(~var_1.c.x), 4294967295u), _wgslsmith_mod_vec4_u32(var_2.a, func_4(~var_1.c, var_2.c, 4294967295u))), u_input.a, var_2.d, var_2.c, vec2<bool>(true, any(!select(vec4<bool>(var_1.a, false, true, var_1.a), vec4<bool>(false, true, true, var_1.a), false))));
    let var_4 = var_3;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<f32>(-1383f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<u32>(62537u, 66886u, 45771u), Struct_1(false, 934f, vec4<u32>(30547u, 11920u, 45643u, 0u)), -1i, true)))) * 332f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(292f, 1165f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(828f + -417f)))))), -abs(max(~(-1i), abs(u_input.b))));
    global0 = global3[_wgslsmith_index_u32(var_0.c.c.x, 11u)];
    var var_1 = var_0.c.b;
    global0 = var_0.b.x;
    let var_2 = _wgslsmith_div_vec3_u32(var_0.a.zzw, _wgslsmith_clamp_vec3_u32(var_0.a.yzx, _wgslsmith_mult_vec3_u32(func_5(vec3<f32>(var_0.c.b, var_0.d.b, -1826f), -2147483647i).d.c.yxy, var_0.d.c.wyw), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 50809u), _wgslsmith_add_vec3_u32(var_0.a.wyz, var_0.c.c.yxw))) & (_wgslsmith_mod_vec3_u32(min(var_0.c.c.ywz, var_0.c.c.zyw), var_0.a.xzy) | ~var_0.d.c.wyy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.c.b)), _wgslsmith_f_op_f32(1027f * var_0.d.b), var_0.c.b, _wgslsmith_f_op_f32(trunc(-1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.b, -1170f, -982f, 865f) * vec4<f32>(401f, 1236f, -323f, var_0.c.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, var_0.c.b, 343f, var_0.c.b)), all(var_0.e))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1478f, -1303f, 848f, 439f) - vec4<f32>(717f, 235f, var_0.d.b, -208f)), vec4<f32>(var_0.d.b, -537f, var_0.c.b, -249f)))), -707f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.b, var_0.c.b, 579f, var_0.d.b))), vec4<f32>(var_0.d.b, -1000f, var_0.d.b, _wgslsmith_div_f32(352f, var_0.c.b))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-752f - 829f), _wgslsmith_f_op_f32(-1093f - var_0.d.b), 421f, _wgslsmith_f_op_f32(sign(-115f))))))), 85005u << (~var_0.d.c.x % 32u));
}

