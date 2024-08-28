struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(276f, 4294967295u, 84865u), Struct_3(993f, 56185u, 1u), Struct_3(1000f, 24381u, 27578u), Struct_3(-108f, 55621u, 1u), Struct_3(657f, 1u, 49937u));

var<private> global1: array<f32, 24> = array<f32, 24>(-565f, -610f, -2877f, -521f, 142f, 1945f, 311f, 649f, -454f, -555f, 1000f, 321f, 231f, 1001f, 1304f, 363f, 723f, 1002f, 593f, -122f, -475f, -1018f, -757f, -1091f);

var<private> global2: vec2<bool>;

var<private> global3: array<i32, 25> = array<i32, 25>(i32(-2147483648), -75339i, -6316i, -10773i, 2147483647i, 0i, -22507i, -7079i, -1556i, i32(-2147483648), 15669i, 18624i, -1i, 2147483647i, -1i, 18918i, -1i, -38738i, 3748i, -1i, -1i, -32833i, -27090i, 0i, 30726i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> vec3<i32> {
    let var_0 = min(-max(vec3<i32>(_wgslsmith_sub_i32(-1i, global3[_wgslsmith_index_u32(arg_1.b.a.x, 25u)]), select(-46996i, arg_1.a, false), 17841i), firstLeadingBit(-vec3<i32>(arg_1.a, arg_1.a, 5196i))), vec3<i32>(~(-60745i), arg_1.a, -2147483647i << (arg_1.b.a.x % 32u)));
    var var_1 = select(vec2<bool>(any(!(!vec3<bool>(global2.x, arg_2, arg_2))), false), vec2<bool>(any(!vec2<bool>(global2.x, global2.x)), true), vec2<bool>(all(vec4<bool>(true, true, true, true)), global2.x));
    global1 = array<f32, 24>();
    return _wgslsmith_add_vec3_i32(vec3<i32>(-arg_1.a, 2147483647i, _wgslsmith_div_i32(17422i, -global3[_wgslsmith_index_u32(reverseBits(arg_0), 25u)])), abs(vec3<i32>(56757i, var_0.x, 0i) << ((vec3<u32>(arg_1.b.a.x, 4294967295u, arg_1.b.a.x) ^ vec3<u32>(1u, u_input.c.x, 65909u)) % vec3<u32>(32u))) >> (u_input.c.zzz % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = arg_0;
    global3 = array<i32, 25>();
    var var_1 = global0[_wgslsmith_index_u32(32645u, 5u)];
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(18098i, global3[_wgslsmith_index_u32(19238u, 25u)], -12815i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, global3[_wgslsmith_index_u32(23755u, 25u)], -17584i), vec3<i32>(global3[_wgslsmith_index_u32(var_0.a.x, 25u)], -1i, -26507i))), firstLeadingBit(vec3<i32>(arg_1.x, -2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 25u)])), -(vec3<i32>(-60626i, arg_1.x, 45991i) << (vec3<u32>(14372u, 0u, var_0.a.x) % vec3<u32>(32u)))), func_3(abs(~arg_0.a.x), Struct_2(-1i, arg_0), true, vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a, global1[_wgslsmith_index_u32(4294967295u, 24u)], true)), -748f, _wgslsmith_f_op_f32(f32(-1f) * -1616f), global1[_wgslsmith_index_u32(var_0.a.x, 24u)]))), abs(i32(-1i) * -_wgslsmith_mod_i32(arg_1.x, arg_1.x)), -2147483647i);
    let var_3 = ~(~u_input.c.zxy);
    return Struct_2(global3[_wgslsmith_index_u32(6077u, 25u)], Struct_1(firstTrailingBit(~vec2<u32>(var_1.c, 1u))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<Struct_3, 5>();
    var var_0 = func_2(Struct_1(_wgslsmith_mult_vec2_u32(u_input.c.yx, countOneBits(vec2<u32>(86615u, arg_0) | u_input.c.wx))), vec2<i32>(~global3[_wgslsmith_index_u32(u_input.c.x, 25u)], firstTrailingBit(~firstTrailingBit(global3[_wgslsmith_index_u32(30718u, 25u)]))));
    var_0 = func_2(var_0.b, max((vec2<i32>(-1i) * -vec2<i32>(var_0.a, 2147483647i)) >> (vec2<u32>(abs(13984u), 45209u) % vec2<u32>(32u)), min(_wgslsmith_sub_vec2_i32(-vec2<i32>(-31438i, global3[_wgslsmith_index_u32(var_0.b.a.x, 25u)]), select(vec2<i32>(var_0.a, var_0.a), vec2<i32>(27854i, 0i), vec2<bool>(true, global2.x))), countOneBits(vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(68959u, 25u)]) & vec2<i32>(-2147483647i, -2147483647i)))));
    let var_1 = var_0.b;
    return func_2(var_0.b, ~select(vec2<i32>(var_0.a, var_0.a << (9233u % 32u)), -vec2<i32>(-41601i, -29301i) ^ vec2<i32>(-1i, var_0.a), select(!vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), !vec2<bool>(false, global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(u_input.a, 25u)], Struct_1(vec2<u32>(1u, 50915u)));
    var_0 = Struct_2(global3[_wgslsmith_index_u32(40383u, 25u)], Struct_1(vec2<u32>(firstTrailingBit(u_input.c.x), var_0.b.a.x)));
    var var_1 = false;
    var var_2 = abs(var_0.a);
    let var_3 = abs(u_input.c);
    let var_4 = func_1(4294967295u);
    let var_5 = ~var_0.b.a;
    var var_6 = ~vec2<i32>(var_0.a, var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.b.a.x, 0u, 14316u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(var_3.x, 23484u, var_3.x), vec3<u32>(4294967295u, 1u, u_input.c.x), true), u_input.c.yyz >> (vec3<u32>(var_5.x, u_input.b, var_4.b.a.x) % vec3<u32>(32u)))), ~(var_3 >> (vec4<u32>(u_input.c.x, 0u, 1u, var_4.b.a.x) % vec4<u32>(32u))) << (~(~vec4<u32>(70906u, 1u, u_input.c.x, var_3.x)) % vec4<u32>(32u)), 3197u, ~_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.c.wzw, vec3<u32>(10695u, u_input.a, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(3868u, var_3.x, 51735u), u_input.c.zxz)), select(max(1i, max(func_3(4294967295u, var_4, global2.x, vec4<f32>(562f, global1[_wgslsmith_index_u32(var_4.b.a.x, 24u)], global1[_wgslsmith_index_u32(26855u, 24u)], -1000f)).x, 1i)), global3[_wgslsmith_index_u32(~(~max(var_4.b.a.x, 22215u)), 25u)], true));
}

