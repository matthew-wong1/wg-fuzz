struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 27273u;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<u32>(6675u, 4294967295u, 1u, 4294967295u), 0u, -6494i, -1303f, 1i)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 63343u, 90842u), 37625u, -81300i, -646f, -15649i)), Struct_2(Struct_1(vec4<u32>(76124u, 4294967295u, 4294967295u, 1u), 4294967295u, i32(-2147483648), 1000f, -16078i)), Struct_2(Struct_1(vec4<u32>(16352u, 17979u, 0u, 15873u), 44931u, -1i, -1745f, 15383i)), Struct_2(Struct_1(vec4<u32>(24572u, 0u, 29390u, 13329u), 47263u, -30375i, 163f, -1i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    let var_0 = global3[_wgslsmith_index_u32(max(1u, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1u, 1u, 10215u, 4294967295u))), vec4<u32>(1u, _wgslsmith_mult_u32(1u, 1u), 4294967295u, select(4294967295u, 81830u, global1.x)) | abs(select(vec4<u32>(0u, 98323u, 0u, 4294967295u), vec4<u32>(4251u, 1796u, 42041u, 0u), global1.x)))), 5u)];
    global3 = array<Struct_2, 5>();
    var var_1 = var_0.a.a.ww;
    let var_2 = _wgslsmith_sub_u32(~var_0.a.b, ~39828u);
    global1 = select(!vec3<bool>(!global1.x, all(vec3<bool>(global1.x, true, false)), true), vec3<bool>(41167u < var_1.x, select(false, global1.x, any(select(global1.yx, global1.zy, vec2<bool>(global1.x, global1.x)))), false), !select(select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, false, false), global1.x), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, true, false), true), vec3<bool>(true, global1.x, global1.x)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, global1.x, true), vec3<bool>(false, global1.x, false)), vec3<bool>(global1.x, global1.x, false), true), vec3<bool>(!global1.x, select(global1.x, false, false), !global1.x)));
    return !vec3<bool>(false, global1.x, !(!global1.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = !select(func_3(), !(!vec3<bool>(true, global1.x, true)), global1.x);
    var var_1 = global1.x;
    global2 = array<Struct_1, 8>();
    let var_2 = -vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(-26651i, u_input.b)) | -1i, max(-13390i, _wgslsmith_mult_i32(1i, -u_input.b)), 4351i, 1i);
    let var_3 = Struct_2(Struct_1(countOneBits(~abs(arg_0.a.a)), arg_1.x, min(2147483647i, -33824i << (arg_1.x % 32u)), arg_0.a.d, var_2.x | _wgslsmith_sub_i32(1i, ~1i)));
    return !(!vec2<bool>(all(!var_0), global1.x));
}

fn func_1() -> vec4<u32> {
    global2 = array<Struct_1, 8>();
    global1 = vec3<bool>(select(global1.x & all(vec4<bool>(false, global1.x, false, global1.x)), any(func_2(Struct_2(global2[_wgslsmith_index_u32(0u, 8u)]), vec2<u32>(0u, 49328u))) || func_2(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 51269u, 6259u), 4294967295u, -35239i, -152f, -3957i)), ~vec2<u32>(23660u, 12272u)).x, any(vec4<bool>(global1.x == true, true, u_input.a <= u_input.b, true))), -(u_input.b & _wgslsmith_mult_i32(u_input.b, -33381i)) != u_input.b, global1.x);
    global3 = array<Struct_2, 5>();
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(abs(~max(1u, _wgslsmith_mult_u32(1083u, 0u))), 8u)]);
    let var_1 = global3[_wgslsmith_index_u32(abs(countOneBits(73960u)), 5u)];
    return vec4<u32>(var_1.a.a.x, ~var_0.a.a.x ^ ~_wgslsmith_mod_u32(0u | var_1.a.a.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.a.b, _wgslsmith_add_u32(var_1.a.b, var_0.a.a.x), 1u), _wgslsmith_add_vec3_u32(~vec3<u32>(var_1.a.b, 0u, 1u), var_0.a.a.zyz) & var_0.a.a.wzy), var_1.a.a.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_div_i32(firstTrailingBit(-u_input.a), -2147483647i);
    var var_1 = ~(~vec3<i32>(-64223i, arg_1.e, -min(-2147483647i, 5606i)));
    let var_2 = arg_3.a.yzx;
    var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2.wxy, vec3<i32>(_wgslsmith_div_i32(18589i, u_input.a), arg_1.c | var_1.x, var_1.x)), ~(arg_2.zxw ^ ~arg_2.wwy));
    global3 = array<Struct_2, 5>();
    return Struct_3(true, select(vec4<u32>(42578u, _wgslsmith_mult_u32(1u, min(arg_1.a.x, 1u)), 31778u, arg_3.b), arg_3.a, select(vec4<bool>(true, -1i < arg_2.x, true, select(false, false, global1.x)), vec4<bool>(all(vec3<bool>(global1.x, true, false)), any(vec3<bool>(false, false, global1.x)), !arg_0, global1.x && global1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, arg_1.e), arg_2.yz) > firstTrailingBit(-2147483647i))), global1.x | any(vec3<bool>(true, true, true)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> vec4<u32> {
    global1 = vec3<bool>(false, true, !func_4(true, Struct_1(vec4<u32>(14161u, arg_1.b.x, arg_1.b.x, arg_1.b.x) & arg_1.b, 1u, -34842i, _wgslsmith_f_op_f32(-197f - 133f), 1i), ~vec4<i32>(arg_3, arg_3, arg_3, u_input.a), Struct_1(_wgslsmith_mod_vec4_u32(arg_1.b, arg_1.b), _wgslsmith_sub_u32(42226u, arg_1.b.x), arg_3, _wgslsmith_f_op_f32(abs(-1358f)), ~7275i)).a);
    var var_0 = arg_1.b.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-987f * _wgslsmith_f_op_f32(f32(-1f) * -1102f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-375f, 767f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-307f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 170f), _wgslsmith_f_op_f32(ceil(-482f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1482f - _wgslsmith_f_op_f32(f32(-1f) * -883f))), !arg_0.a)), -1285f);
    var var_2 = func_1();
    var var_3 = select(func_2(global3[_wgslsmith_index_u32(1087u, 5u)], arg_1.b.xz), vec2<bool>(_wgslsmith_div_u32(arg_2, 66317u) >= _wgslsmith_dot_vec4_u32(arg_1.b, ~vec4<u32>(var_2.x, var_2.x, arg_1.b.x, arg_0.b.x)), (-arg_3 != -24909i) | true), select(global1.xy, func_3().zz, global1.yy));
    return _wgslsmith_sub_vec4_u32(reverseBits(~(~vec4<u32>(4294967295u, 0u, arg_0.b.x, 49458u))) | ~vec4<u32>(arg_0.b.x, _wgslsmith_mod_u32(84210u, 1u), _wgslsmith_add_u32(arg_0.b.x, arg_0.b.x), firstTrailingBit(var_2.x)), ~(~((vec4<u32>(4294967295u, arg_0.b.x, arg_0.b.x, var_2.x) ^ vec4<u32>(arg_0.b.x, 8651u, 7504u, arg_2)) >> (~arg_0.b % vec4<u32>(32u)))));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_1 {
    global2 = array<Struct_1, 8>();
    let var_0 = func_3();
    let var_1 = Struct_3(func_3().x, vec4<u32>(~4294967295u, _wgslsmith_div_u32(~1u, ~(arg_0.x ^ 15716u)), firstLeadingBit(41237u) | arg_0.x, _wgslsmith_mult_u32(1u, ~(59941u ^ arg_0.x))), func_3().x);
    var var_2 = all(!select(vec3<bool>(func_3().x, var_0.x, func_4(var_1.a, Struct_1(arg_0, 4294967295u, -2147483647i, -601f, 1i), vec4<i32>(u_input.b, -40762i, u_input.b, u_input.a), global2[_wgslsmith_index_u32(74509u, 8u)]).c), !vec3<bool>(false, arg_1.x, var_0.x), !vec3<bool>(var_0.x, arg_1.x, true)));
    global1 = select(var_0, var_0, any(vec4<bool>(true, func_3().x, !var_0.x, !var_0.x)) && all(!var_0));
    return Struct_1(arg_0, ~arg_0.x, 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)), false))), _wgslsmith_mod_i32(u_input.b, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(all(select(vec2<bool>(true, global1.x), vec2<bool>(true, false), global1.x)), global2[_wgslsmith_index_u32(abs(38553u << (1u % 32u)), 8u)], -(~vec4<i32>(2147483647i, 9562i, u_input.a, u_input.a)), Struct_1(func_1(), _wgslsmith_dot_vec2_u32(vec2<u32>(9649u, 1u), vec2<u32>(21825u, 37778u)), _wgslsmith_mult_i32(2622i, 2483i), -997f, _wgslsmith_dot_vec2_i32(vec2<i32>(-21759i, -1i), vec2<i32>(u_input.b, -26902i)))), Struct_3(true, vec4<u32>(19396u, ~4294967295u, ~38804u, ~4294967295u), u_input.a > -23210i), ~(~(~0u)), u_input.a), vec4<bool>(true, global1.x, global1.x, any(!vec4<bool>(true, global1.x, global1.x, false))));
    global0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

