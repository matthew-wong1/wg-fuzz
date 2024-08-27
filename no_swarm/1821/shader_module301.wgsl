struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(15815i, vec3<u32>(1u, 1u, 1u), i32(-2147483648)), Struct_2(vec4<u32>(10342u, 1u, 65517u, 4294967295u))), Struct_3(Struct_1(32332i, vec3<u32>(95814u, 0u, 1u), -37348i), Struct_2(vec4<u32>(1u, 7593u, 4294967295u, 83863u))), Struct_3(Struct_1(-62014i, vec3<u32>(1u, 0u, 26266u), -3629i), Struct_2(vec4<u32>(33761u, 0u, 18280u, 25490u))), Struct_3(Struct_1(i32(-2147483648), vec3<u32>(1u, 1u, 18668u), 2147483647i), Struct_2(vec4<u32>(0u, 0u, 1u, 0u))), Struct_3(Struct_1(-54462i, vec3<u32>(1u, 4294967295u, 1u), i32(-2147483648)), Struct_2(vec4<u32>(4294967295u, 52173u, 1u, 4294967295u))), Struct_3(Struct_1(0i, vec3<u32>(0u, 84175u, 4294967295u), -154i), Struct_2(vec4<u32>(22775u, 3486u, 0u, 0u))), Struct_3(Struct_1(2147483647i, vec3<u32>(4294967295u, 34220u, 4294967295u), 1i), Struct_2(vec4<u32>(4294967295u, 4294967295u, 30288u, 0u))), Struct_3(Struct_1(i32(-2147483648), vec3<u32>(2151u, 0u, 10537u), 23821i), Struct_2(vec4<u32>(4294967295u, 3074u, 1u, 1u))), Struct_3(Struct_1(1i, vec3<u32>(4294967295u, 1u, 1u), 28984i), Struct_2(vec4<u32>(35595u, 4294967295u, 4294967295u, 26576u))), Struct_3(Struct_1(-1i, vec3<u32>(4269u, 18782u, 1u), 1i), Struct_2(vec4<u32>(13150u, 4294967295u, 4294967295u, 20102u))), Struct_3(Struct_1(0i, vec3<u32>(113978u, 1u, 0u), 1i), Struct_2(vec4<u32>(34467u, 1u, 33635u, 4294967295u))), Struct_3(Struct_1(-43987i, vec3<u32>(51960u, 14198u, 4294967295u), 0i), Struct_2(vec4<u32>(50544u, 12162u, 135337u, 20619u))), Struct_3(Struct_1(16076i, vec3<u32>(24076u, 1u, 87678u), -1i), Struct_2(vec4<u32>(34228u, 0u, 0u, 34052u))), Struct_3(Struct_1(0i, vec3<u32>(47455u, 14281u, 4294967295u), i32(-2147483648)), Struct_2(vec4<u32>(1u, 14296u, 0u, 4294967295u))), Struct_3(Struct_1(2147483647i, vec3<u32>(36378u, 4294967295u, 4294967295u), 0i), Struct_2(vec4<u32>(2431u, 2808u, 22493u, 0u))), Struct_3(Struct_1(2147483647i, vec3<u32>(0u, 72739u, 5341u), 36683i), Struct_2(vec4<u32>(1u, 36151u, 108782u, 7518u))), Struct_3(Struct_1(-2062i, vec3<u32>(0u, 1u, 0u), -42551i), Struct_2(vec4<u32>(24601u, 19514u, 12848u, 4294967295u))), Struct_3(Struct_1(-27385i, vec3<u32>(91091u, 4294967295u, 10033u), 2147483647i), Struct_2(vec4<u32>(0u, 59293u, 16916u, 4294967295u))), Struct_3(Struct_1(2147483647i, vec3<u32>(16089u, 0u, 23680u), 1i), Struct_2(vec4<u32>(1u, 1u, 1u, 30155u))));

var<private> global3: Struct_1 = Struct_1(-34706i, vec3<u32>(0u, 4294967295u, 1u), -1i);

var<private> global4: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = arg_0;
    global3 = Struct_1(-u_input.b, ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.b.x, 1u), vec3<u32>(arg_2.x, 3252u, arg_1.a.b.x)), abs(global3.b), _wgslsmith_div_vec3_u32(~vec3<u32>(30114u, 48072u, var_0.b.x), vec3<u32>(0u, arg_2.x, 4294967295u) & arg_0.b)), _wgslsmith_clamp_i32(0i, ~(-(arg_1.a.c | 2147483647i)), global0.x));
    let var_1 = true;
    global4 = !(!var_1);
    let var_2 = _wgslsmith_mod_i32(-(~u_input.b), 2147483647i);
    return firstLeadingBit(vec3<u32>(2170u, countOneBits(select(arg_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 25511u), global3.b.xy), var_1)), firstTrailingBit(7969u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = firstLeadingBit(select(_wgslsmith_clamp_vec3_u32(func_3(Struct_1(-23452i, global3.b, -12297i), arg_2, arg_1.b.a >> (vec4<u32>(62223u, arg_2.b.a.x, global3.b.x, arg_2.a.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-195f, 1000f, 1510f)))), arg_2.a.b, _wgslsmith_sub_vec3_u32(u_input.a << (arg_2.a.b % vec3<u32>(32u)), vec3<u32>(global3.b.x, 6403u, arg_2.a.b.x))), ~abs(_wgslsmith_clamp_vec3_u32(arg_1.b.a.www, vec3<u32>(4220u, arg_1.a.b.x, u_input.a.x), u_input.a)), any(select(vec4<bool>(false, true, arg_0.x, arg_0.x), !vec4<bool>(true, true, arg_0.x, arg_0.x), arg_0.x))));
    global4 = select(!any(arg_0.wz), ~5076u > _wgslsmith_sub_u32(~u_input.a.x, ~abs(23890u)), true);
    let var_1 = Struct_1(~(~(~(-1i & global3.a))), vec3<u32>(max(~_wgslsmith_add_u32(4294967295u, arg_1.b.a.x), 55119u), 4294967295u, firstLeadingBit(33701u)), ~u_input.b);
    var var_2 = min(~((vec3<i32>(arg_2.a.c, var_1.c, 2894i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.c, -1i, u_input.b), vec3<i32>(1361i, -2147483647i, 1i))) ^ select(vec3<i32>(1i, 1i, -2147483647i) & vec3<i32>(arg_2.a.a, global3.a, arg_1.a.c), vec3<i32>(global0.x, -2147483647i, -9231i), true)), ~min(~vec3<i32>(arg_2.a.a, -1i, 0i), select(vec3<i32>(1i, 1i, 1i), -vec3<i32>(1i, 13859i, u_input.b), arg_0.x)));
    return 9369u;
}

fn func_4(arg_0: u32) -> Struct_2 {
    var var_0 = 0u;
    var var_1 = Struct_1(-global3.a, countOneBits(u_input.a) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(0u, u_input.a.x), ~u_input.a.x), vec3<u32>(arg_0, u_input.a.x, _wgslsmith_clamp_u32(4294967295u, u_input.a.x, global3.b.x))) % vec3<u32>(32u)), u_input.b);
    var_1 = Struct_1(global3.a & _wgslsmith_mod_i32(global3.c, -9399i), vec3<u32>(~u_input.a.x >> (_wgslsmith_div_u32(4294967295u << (0u % 32u), arg_0) % 32u), 25897u, countOneBits(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1.b.x, global3.b.x, global3.b.x)))), select(u_input.b, _wgslsmith_clamp_i32(-2147483647i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b, 2147483647i), -vec4<i32>(12606i, -37750i, global0.x, u_input.b))), any(vec4<bool>(true, true, -1227i < global3.a, true))));
    var var_2 = select(vec2<bool>(false, true), vec2<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), true), vec2<bool>(false, false));
    var var_3 = ~u_input.a.x;
    return Struct_2(vec4<u32>(var_1.b.x, max(arg_0, global3.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(17354u, 55651u, 0u, u_input.a.x) >> (vec4<u32>(arg_0, global3.b.x, global3.b.x, global3.b.x) % vec4<u32>(32u)), ~vec4<u32>(27613u, u_input.a.x, global3.b.x, var_1.b.x)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, 25299u, global3.b.x), vec4<u32>(var_1.b.x, 0u, arg_0, 0u)))) | vec4<u32>(var_1.b.x, global3.b.x, 1u, max(37589u, ~14095u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = 12269u;
    var var_1 = !vec3<bool>((arg_1.a > (i32(-1i) * -4207i)) | false, !(arg_1.c < global0.x), all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))));
    var var_2 = arg_1;
    let var_3 = var_0;
    let var_4 = vec4<i32>(23267i, ~(-arg_0.x), -2147483647i << (0u % 32u), 23739i) | -((vec4<i32>(-1i) * -arg_0) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, global3.b.x, 1u, 0u), vec4<u32>(6753u, var_3, 1u, var_3)), vec4<u32>(var_3, 0u, var_3, arg_1.b.x)) % vec4<u32>(32u)));
    return Struct_3(Struct_1(2147483647i ^ var_2.a, vec3<u32>(var_2.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(arg_1.b.x, var_2.b.x)), ~39124u), 104862u), arg_1.c), func_4(firstTrailingBit(max(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, arg_1.b.x, 11492u, var_3), vec4<u32>(u_input.a.x, 4294967295u, var_2.b.x, u_input.a.x)), func_2(vec4<bool>(var_1.x, var_1.x, var_1.x, false), global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(29167u, 19u)])))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    let var_0 = func_1(-(abs(vec4<i32>(arg_1.a.a, -2147483647i, -1i, global0.x)) ^ vec4<i32>(arg_1.a.c, reverseBits(u_input.b), 54070i, -5108i)), func_1(vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-3921i, -2147483647i), -vec2<i32>(arg_0.c, global0.x)), -1i, 2147483647i), Struct_1(1i, vec3<u32>(u_input.a.x, 1u, global3.b.x) | select(global3.b, global3.b, vec3<bool>(true, false, false)), _wgslsmith_sub_i32(0i, -19667i) >> (arg_0.b.x % 32u))).a);
    global0 = abs(_wgslsmith_sub_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 15031i), vec2<i32>(arg_1.a.c, var_0.a.a)), vec2<i32>(var_0.a.a, global3.a) ^ vec2<i32>(1i, u_input.b)) << (var_0.a.b.zy % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(~(-5555i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(arg_1.a.c, arg_1.a.a))), abs(vec2<i32>(-40671i, global0.x)))));
    var var_1 = var_0;
    global1 = ~select(~_wgslsmith_mod_u32(68782u, arg_1.b.a.x), arg_1.b.a.x, true) < _wgslsmith_add_u32(~(~arg_0.b.x) & global3.b.x, ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 42026u, 4294967295u, var_0.a.b.x), arg_1.b.a)));
    let var_2 = var_1.b;
    return !(true | any(vec4<bool>(true, true, true, true))) != any(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(reverseBits(-countOneBits(vec2<i32>(-2147483647i, 38669i) << (u_input.a.xz % vec2<u32>(32u)))), countOneBits(countOneBits(vec2<i32>(select(global3.a, 1i, false), -global3.c))), select(func_5(Struct_1(global3.a, u_input.a, -24198i), func_1(vec4<i32>(global0.x, u_input.b, 3726i, global0.x), Struct_1(-13758i, vec3<u32>(4294967295u, 0u, 27267u), 25178i))) & false, _wgslsmith_div_u32(global3.b.x, _wgslsmith_clamp_u32(4294967295u, 72635u, u_input.a.x)) == 32723u, true));
    var var_0 = true;
    let var_1 = true;
    global2 = array<Struct_3, 19>();
    global2 = array<Struct_3, 19>();
    global4 = !(!any(vec3<bool>(true, true, true)));
    let var_2 = ~global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1195f)), _wgslsmith_f_op_f32(trunc(1641f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-340f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * -417f)), 530f, vec4<u32>(_wgslsmith_mult_u32(select(16483u, func_1(vec4<i32>(-2147483647i, -1i, global0.x, var_2), Struct_1(var_2, vec3<u32>(31934u, u_input.a.x, 0u), -1191i)).a.b.x, var_1), 1u), ~u_input.a.x, 1u, func_2(select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(true, true, false, false), select(vec4<bool>(var_1, false, false, true), vec4<bool>(var_1, true, var_1, true), var_1)), Struct_3(Struct_1(var_2, vec3<u32>(42480u, 4294967295u, u_input.a.x), 68610i), func_4(global3.b.x)), global2[_wgslsmith_index_u32(global3.b.x, 19u)])), 83599i, _wgslsmith_div_vec3_i32(firstLeadingBit(firstLeadingBit(vec3<i32>(global0.x, 13826i, global0.x))), vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_2, global0.x)) & countOneBits(vec3<i32>(var_2, 1i, _wgslsmith_mod_i32(0i, -41090i))));
}

