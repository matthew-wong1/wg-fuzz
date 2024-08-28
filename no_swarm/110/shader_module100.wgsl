struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(vec2<f32>(-1000f, -127f)), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_3(Struct_2(vec2<f32>(-1259f, -1000f)), vec3<u32>(3219u, 10482u, 16480u)), Struct_3(Struct_2(vec2<f32>(1000f, 441f)), vec3<u32>(145076u, 1u, 39476u)), Struct_3(Struct_2(vec2<f32>(2461f, -624f)), vec3<u32>(0u, 52583u, 0u)), Struct_3(Struct_2(vec2<f32>(-792f, 375f)), vec3<u32>(4294967295u, 1473u, 1u)), Struct_3(Struct_2(vec2<f32>(1088f, 552f)), vec3<u32>(1u, 4757u, 24231u)), Struct_3(Struct_2(vec2<f32>(888f, 286f)), vec3<u32>(4294967295u, 44084u, 0u)), Struct_3(Struct_2(vec2<f32>(-1235f, 728f)), vec3<u32>(4294967295u, 35390u, 0u)), Struct_3(Struct_2(vec2<f32>(241f, -570f)), vec3<u32>(3987u, 7251u, 1u)), Struct_3(Struct_2(vec2<f32>(-234f, 1259f)), vec3<u32>(0u, 1u, 0u)), Struct_3(Struct_2(vec2<f32>(490f, 1142f)), vec3<u32>(0u, 4294967295u, 0u)), Struct_3(Struct_2(vec2<f32>(-738f, 1803f)), vec3<u32>(0u, 4294967295u, 69070u)), Struct_3(Struct_2(vec2<f32>(-122f, 436f)), vec3<u32>(32665u, 1u, 28589u)), Struct_3(Struct_2(vec2<f32>(-745f, -626f)), vec3<u32>(1u, 55794u, 0u)), Struct_3(Struct_2(vec2<f32>(1173f, 1064f)), vec3<u32>(15306u, 12525u, 13694u)), Struct_3(Struct_2(vec2<f32>(252f, -408f)), vec3<u32>(26449u, 4294967295u, 0u)), Struct_3(Struct_2(vec2<f32>(468f, -901f)), vec3<u32>(43050u, 4294967295u, 68092u)), Struct_3(Struct_2(vec2<f32>(-1109f, -1001f)), vec3<u32>(1u, 1u, 1u)), Struct_3(Struct_2(vec2<f32>(162f, 778f)), vec3<u32>(0u, 0u, 4294967295u)), Struct_3(Struct_2(vec2<f32>(-2234f, 1000f)), vec3<u32>(4294967295u, 0u, 0u)), Struct_3(Struct_2(vec2<f32>(1102f, 453f)), vec3<u32>(45240u, 4294967295u, 4294967295u)));

var<private> global1: vec4<bool>;

var<private> global2: vec2<u32> = vec2<u32>(36830u, 0u);

var<private> global3: array<i32, 2> = array<i32, 2>(i32(-2147483648), 2147483647i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<i32> {
    global1 = select(select(select(vec4<bool>(global1.x, !global1.x, any(vec4<bool>(global1.x, true, false, global1.x)), true), vec4<bool>(all(global1.zyz), false, false && global1.x, true), true), vec4<bool>(select(global1.x && global1.x, true, true), true, any(vec4<bool>(true, global1.x, global1.x, global1.x)), true), select(vec4<bool>(!global1.x, global1.x || global1.x, true, global1.x), select(vec4<bool>(true, global1.x, global1.x, global1.x), select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, true, global1.x, global1.x), true), !global1.x), !vec4<bool>(global1.x, global1.x, true, false))), vec4<bool>(all(global1.xx), true, true, any(vec2<bool>(!global1.x, true))), true);
    var var_0 = _wgslsmith_f_op_f32(abs(369f));
    var var_1 = false;
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), global2.x), 2u)], firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a.x, 2u)]), 1i), max(-vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 2u)]), _wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 2u)], 32954i, 12882i), vec3<i32>(global3[_wgslsmith_index_u32(27285u, 2u)], 0i, -1i)))) ^ -(countOneBits(vec3<i32>(6559i, global3[_wgslsmith_index_u32(u_input.a.x, 2u)], 37393i)) | select(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], 2147483647i, global3[_wgslsmith_index_u32(66954u, 2u)])), vec3<i32>(-2147483647i, 63907i, global3[_wgslsmith_index_u32(46050u, 2u)]), !global1.x));
    global1 = vec4<bool>(all(global1.zyz), false, true, true);
    return select(~vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global3[_wgslsmith_index_u32(4294967295u, 2u)], var_2.x), vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 2u)], -2147483647i, 2147483647i)), ~vec3<i32>(11873i, 1i, var_2.x)), global3[_wgslsmith_index_u32(532u, 2u)], _wgslsmith_sub_i32(var_2.x, firstLeadingBit(2147483647i)), ~abs(global3[_wgslsmith_index_u32(u_input.a.x, 2u)])), select(~(~vec4<i32>(-76078i, -1i, var_2.x, var_2.x)), ~vec4<i32>(max(38468i, global3[_wgslsmith_index_u32(71505u, 2u)]), global3[_wgslsmith_index_u32(select(global2.x, u_input.a.x, global1.x), 2u)], _wgslsmith_div_i32(-2147483647i, global3[_wgslsmith_index_u32(global2.x, 2u)]), -var_2.x), global1.x), select(select(vec4<bool>(any(vec2<bool>(global1.x, global1.x)), global1.x, global1.x || true, all(vec4<bool>(true, global1.x, true, global1.x))), !select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(true, false, global1.x, global1.x)), select(!vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, global1.x, true, global1.x), true)), !vec4<bool>(false && global1.x, global1.x, global1.x | global1.x, any(vec3<bool>(true, false, global1.x))), false));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 21>();
    let var_0 = u_input.a;
    global0 = array<Struct_3, 21>();
    let var_1 = min(~func_3(), vec4<i32>(~global3[_wgslsmith_index_u32(~0u, 2u)], 1i, _wgslsmith_div_i32(-3862i, global3[_wgslsmith_index_u32(3283u, 2u)]), -29329i));
    var var_2 = 1u;
    return Struct_2(vec2<f32>(-589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(465f, 1297f))))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    global1 = vec4<bool>(any(!vec3<bool>(true, global1.x, arg_1.x)), true, arg_1.x, arg_1.x);
    var var_0 = Struct_3(func_2(), firstTrailingBit(vec3<u32>(48776u, abs(~u_input.a.x), min(global2.x | global2.x, 28859u))));
    global2 = vec2<u32>(18661u, _wgslsmith_dot_vec2_u32(max(u_input.a, u_input.a), u_input.a)) ^ (abs(vec2<u32>(2990u << (u_input.a.x % 32u), 37047u)) >> (var_0.b.yy % vec2<u32>(32u)));
    var var_1 = ~1i;
    var var_2 = var_0.a;
    return u_input.a.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> vec2<u32> {
    let var_0 = -vec4<i32>(global3[_wgslsmith_index_u32(~global2.x, 2u)], abs(max(~(-1i), global3[_wgslsmith_index_u32(~11284u, 2u)])), i32(-1i) * -_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 5217i, 19273i, global3[_wgslsmith_index_u32(arg_0.x, 2u)]) | vec4<i32>(global3[_wgslsmith_index_u32(global2.x, 2u)], -2147483647i, global3[_wgslsmith_index_u32(13779u, 2u)], 1i)), -(~vec4<i32>(-5158i, -54481i, 7883i, global3[_wgslsmith_index_u32(1u, 2u)]))));
    global3 = array<i32, 2>();
    global1 = !vec4<bool>(all(global1.zw), !any(vec3<bool>(global1.x, global1.x, true)), true, arg_1 & true);
    var var_1 = Struct_5(-867f, !any(select(global1.wy, global1.yw, vec2<bool>(arg_1, arg_1))) == true, reverseBits(_wgslsmith_div_vec2_i32(-vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, var_0.x) ^ vec2<i32>(global3[_wgslsmith_index_u32(85223u, 2u)], 37329i)) << (u_input.a % vec2<u32>(32u))), var_0.zwz, ~(~(~firstLeadingBit(global2.x))));
    global3 = array<i32, 2>();
    return (_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global2.x, 4294967295u), arg_2), u_input.a) >> (u_input.a % vec2<u32>(32u))) & vec2<u32>(arg_0.x, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(select(_wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(global2.x, global2.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 4294967295u) | u_input.a, u_input.a)), firstLeadingBit(min(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), vec2<u32>(global2.x, 1u))), select(!global1.zw, global1.zw, false)), global1.x, func_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(17795u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(59201u, 2u)]), countOneBits(vec4<i32>(29875i, global3[_wgslsmith_index_u32(global2.x, 2u)], 55023i, 2147483647i))), ~(global3[_wgslsmith_index_u32(u_input.a.x, 2u)] >> (1u % 32u)), min(firstTrailingBit(-2147483647i), global3[_wgslsmith_index_u32(1u, 2u)] << (4294967295u % 32u))), select(select(global1.yy, global1.xx, global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), vec2<bool>(false, false)), false)));
    global0 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(0i, -1i, 6677i)), func_3().xxy | vec3<i32>(-2147483647i, 2147483647i, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(402f + 634f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1013f - 3117f) * -1372f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(603f, 530f)))))));
}

