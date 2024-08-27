struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: vec3<f32> = vec3<f32>(-2109f, 1409f, 326f);

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(70469u, vec3<u32>(40202u, 34840u, 135790u), Struct_2(1170f), true), Struct_3(118026u, vec3<u32>(0u, 1u, 0u), Struct_2(1412f), false), Struct_3(13233u, vec3<u32>(0u, 4294967295u, 18523u), Struct_2(2791f), false), Struct_3(0u, vec3<u32>(117154u, 0u, 3534u), Struct_2(-1000f), true), Struct_3(4294967295u, vec3<u32>(0u, 76918u, 45961u), Struct_2(1518f), true), Struct_3(62923u, vec3<u32>(1u, 65456u, 25467u), Struct_2(621f), false), Struct_3(1u, vec3<u32>(31281u, 1u, 5562u), Struct_2(-1287f), true), Struct_3(0u, vec3<u32>(67808u, 1u, 33780u), Struct_2(1000f), false), Struct_3(85778u, vec3<u32>(4294967295u, 21941u, 14020u), Struct_2(-703f), false), Struct_3(18499u, vec3<u32>(60543u, 0u, 34527u), Struct_2(-376f), false), Struct_3(1u, vec3<u32>(1u, 35079u, 7497u), Struct_2(-1470f), false), Struct_3(0u, vec3<u32>(4294967295u, 82811u, 0u), Struct_2(1117f), false), Struct_3(47397u, vec3<u32>(57409u, 21995u, 4294967295u), Struct_2(-972f), true), Struct_3(1u, vec3<u32>(23814u, 1u, 4294967295u), Struct_2(1696f), false), Struct_3(1u, vec3<u32>(0u, 0u, 24938u), Struct_2(675f), true), Struct_3(71604u, vec3<u32>(1u, 4294967295u, 4294967295u), Struct_2(-104f), false), Struct_3(34106u, vec3<u32>(4294967295u, 1u, 40671u), Struct_2(-349f), false), Struct_3(1u, vec3<u32>(19544u, 44651u, 4294967295u), Struct_2(163f), true), Struct_3(4294967295u, vec3<u32>(1u, 1u, 107218u), Struct_2(1000f), true), Struct_3(36491u, vec3<u32>(12492u, 46064u, 1u), Struct_2(-2088f), false), Struct_3(58394u, vec3<u32>(0u, 15206u, 4294967295u), Struct_2(-1000f), false), Struct_3(1u, vec3<u32>(1u, 0u, 194u), Struct_2(829f), false), Struct_3(4294967295u, vec3<u32>(56818u, 1u, 1u), Struct_2(1247f), true), Struct_3(33380u, vec3<u32>(9604u, 0u, 27038u), Struct_2(-1000f), false), Struct_3(0u, vec3<u32>(3539u, 1u, 31286u), Struct_2(1702f), false), Struct_3(16609u, vec3<u32>(7990u, 0u, 32408u), Struct_2(261f), true), Struct_3(11316u, vec3<u32>(28969u, 1u, 1u), Struct_2(-957f), true));

var<private> global2: vec4<u32> = vec4<u32>(22902u, 24697u, 4294967295u, 4294967295u);

var<private> global3: array<vec2<f32>, 20>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global3 = array<vec2<f32>, 20>();
    global3 = array<vec2<f32>, 20>();
    let var_0 = !select(vec2<bool>(any(arg_0), all(select(arg_0.zy, vec2<bool>(arg_0.x, true), false))), !select(vec2<bool>(true, false), select(vec2<bool>(false, arg_0.x), arg_0.xx, vec2<bool>(true, arg_0.x)), select(vec2<bool>(true, arg_0.x), vec2<bool>(false, true), arg_0.xz)), !(!all(arg_0)));
    var var_1 = select(vec4<bool>(abs(u_input.a.x) < 1i, all(select(select(vec2<bool>(arg_0.x, arg_0.x), var_0, false), vec2<bool>(false, true), !arg_0.x)), arg_0.x, arg_0.x), select(select(arg_0, !select(arg_0, vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, false, false, true)), var_0.x), vec4<bool>(_wgslsmith_f_op_f32(global0.x - global0.x) < _wgslsmith_f_op_f32(select(global0.x, global0.x, false)), true, any(!arg_0.wy), false), u_input.a.x <= abs(i32(-1i) * -29866i)), !arg_0);
    var var_2 = Struct_3(global2.x, ~(~((vec3<u32>(global2.x, global2.x, 1u) | global2.xwx) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(68191u, 0u, u_input.b)))), Struct_2(_wgslsmith_f_op_f32(min(236f, global0.x))), var_0.x);
    return !(!all(vec3<bool>(var_0.x, true, false))) & any(select(vec4<bool>(true, true, all(vec2<bool>(arg_0.x, arg_0.x)), true), vec4<bool>(!var_1.x, false, true, var_0.x), false));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_1(abs(-vec2<i32>(reverseBits(u_input.a.x), 3830i)), select(arg_2.x, (_wgslsmith_f_op_f32(-arg_0.c.a) == -315f) && arg_2.x, true != func_3(vec4<bool>(false, false, arg_0.d, true))), min(select(abs(vec4<i32>(2147483647i, u_input.a.x, -1i, 1i)) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1094i), select(abs(vec4<i32>(-2147483647i, -2147483647i, -23874i, 100015i)), vec4<i32>(29015i, u_input.a.x, u_input.a.x, -23123i), false), !select(vec4<bool>(true, false, arg_0.d, true), vec4<bool>(false, true, arg_0.d, arg_0.d), true)), abs(abs(vec4<i32>(-8937i, 72461i, u_input.a.x, u_input.a.x) ^ vec4<i32>(41926i, -20250i, u_input.a.x, u_input.a.x)))), any(select(select(vec3<bool>(arg_2.x, false, arg_0.d), vec3<bool>(arg_0.d, false, arg_0.d), vec3<bool>(arg_2.x, true, true)), vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_0.d, arg_2.x, arg_0.d))) && arg_0.d);
    let var_1 = 2147483647i;
    global2 = _wgslsmith_mult_vec4_u32(reverseBits(abs(max(vec4<u32>(global2.x, 38012u, global2.x, u_input.b), select(vec4<u32>(u_input.b, u_input.b, 87008u, arg_0.b.x), vec4<u32>(4294967295u, 6016u, 4294967295u, 37369u), vec4<bool>(true, false, false, false))))), ~abs(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)));
    let var_2 = Struct_1(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x << (72210u % 32u), -u_input.a.x), _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.wz ^ vec2<i32>(46615i, var_0.a.x)), var_0.c.yw)), true, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~max(u_input.a, u_input.a), ~var_0.c), vec4<i32>(countOneBits(-1i) << (~u_input.b % 32u), -2147483647i, 0i, ~u_input.a.x)), !(true == any(select(vec3<bool>(false, false, false), vec3<bool>(false, var_0.d, var_0.b), false))));
    let var_3 = arg_1;
    return vec4<u32>(u_input.b, min(~30234u, 18351u), u_input.b, abs(~u_input.b)) & (~(max(vec4<u32>(4294967295u, global2.x, arg_0.b.x, u_input.b), vec4<u32>(1u, u_input.b, 1u, global2.x)) << (~vec4<u32>(50236u, 1u, global2.x, 1u) % vec4<u32>(32u))) & ~(~vec4<u32>(16456u, 48871u, global2.x, arg_0.a) ^ (vec4<u32>(global2.x, global2.x, global2.x, u_input.b) << (vec4<u32>(u_input.b, u_input.b, 18219u, u_input.b) % vec4<u32>(32u)))));
}

fn func_1() -> f32 {
    global2 = _wgslsmith_sub_vec4_u32(select(~select(vec4<u32>(13626u, 47881u, u_input.b, u_input.b), vec4<u32>(0u, 91941u, 3734u, u_input.b), vec4<bool>(true, false, true, true)), reverseBits(~vec4<u32>(65830u, 4294967295u, 1u, 1u)), !(909f != global0.x)), ~(vec4<u32>(global2.x, 68517u, 0u, 84461u) >> (vec4<u32>(43997u, global2.x, 0u, u_input.b) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 1u, 20581u, 365u)), ~vec4<u32>(global2.x, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))) << ((select(_wgslsmith_mod_vec4_u32(func_2(global1[_wgslsmith_index_u32(global2.x, 27u)], Struct_2(global0.x), vec2<bool>(true, true)), ~vec4<u32>(u_input.b, 48904u, 1u, 72449u)), countOneBits(min(vec4<u32>(global2.x, 15097u, 41226u, u_input.b), vec4<u32>(3196u, u_input.b, u_input.b, global2.x))), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, func_3(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, true, false)))) >> ((~vec4<u32>(global2.x, u_input.b, 0u, global2.x) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 1u, 86339u, u_input.b), vec4<u32>(0u, 0u, 3269u, 12817u), vec4<u32>(1u, u_input.b, 0u, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_0 = Struct_1(-(~vec2<i32>(u_input.a.x, ~u_input.a.x)), true, abs(abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2371i, -1i, 0i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), select(false, false, !(_wgslsmith_f_op_f32(round(global0.x)) < global0.x)));
    global1 = array<Struct_3, 27>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(min(global0.x, global0.x)), true)), global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -253f) + _wgslsmith_f_op_f32(-1765f - global0.x)))), _wgslsmith_f_op_f32(-888f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-390f * 1637f))), _wgslsmith_f_op_f32(select(-1009f, _wgslsmith_f_op_f32(floor(global0.x)), 1u >= u_input.b))))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 128f))));
    var var_1 = var_0.c.zwz;
    return _wgslsmith_f_op_f32(-global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(0u, 20u)])) * _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(~(~4294967295u), 20u)])) - vec2<f32>(_wgslsmith_f_op_f32(230f + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))) + 530f)));
    global2 = ~(~(vec4<u32>(_wgslsmith_clamp_u32(global2.x, 0u, global2.x), _wgslsmith_clamp_u32(25473u, 0u, 5704u), ~34903u, ~0u) | ~abs(vec4<u32>(44202u, 56480u, 1u, 12639u))));
    global1 = array<Struct_3, 27>();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(sign(-1896f))), 357f, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), -515f), _wgslsmith_f_op_f32(max(696f, _wgslsmith_f_op_f32(global0.x + global0.x))))))));
    var var_2 = u_input.a.x;
    global1 = array<Struct_3, 27>();
    let var_3 = u_input.b > _wgslsmith_div_u32(16872u, 10190u);
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))) * _wgslsmith_f_op_f32(-global0.x))))));
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

