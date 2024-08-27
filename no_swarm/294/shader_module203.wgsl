struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<u32, 29>;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(true), Struct_1(true), false), Struct_2(Struct_1(true), Struct_1(false), false), Struct_2(Struct_1(false), Struct_1(true), true), Struct_2(Struct_1(true), Struct_1(true), false), Struct_2(Struct_1(false), Struct_1(true), false), Struct_2(Struct_1(true), Struct_1(false), false), Struct_2(Struct_1(true), Struct_1(false), true), Struct_2(Struct_1(false), Struct_1(true), true), Struct_2(Struct_1(true), Struct_1(true), false), Struct_2(Struct_1(true), Struct_1(false), true), Struct_2(Struct_1(false), Struct_1(false), true), Struct_2(Struct_1(false), Struct_1(true), false), Struct_2(Struct_1(true), Struct_1(true), false), Struct_2(Struct_1(true), Struct_1(true), true), Struct_2(Struct_1(false), Struct_1(true), true), Struct_2(Struct_1(false), Struct_1(false), true), Struct_2(Struct_1(false), Struct_1(true), false), Struct_2(Struct_1(false), Struct_1(false), true), Struct_2(Struct_1(false), Struct_1(true), true), Struct_2(Struct_1(false), Struct_1(true), true));

var<private> global3: vec3<u32> = vec3<u32>(36809u, 7326u, 33806u);

var<private> global4: array<Struct_2, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = 0i;
    var var_1 = u_input.a.x;
    global4 = array<Struct_2, 6>();
    global3 = ~u_input.a;
    var_0 = -35622i;
    return vec3<bool>(all(vec2<bool>(true, true)), any(!vec4<bool>(true, any(vec3<bool>(true, false, true)), u_input.b != 0i, select(true, false, false))), !(0i < u_input.b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    global1 = array<u32, 29>();
    let var_0 = arg_2.b;
    var var_1 = vec2<i32>(~abs(34253i), -(~0i));
    var var_2 = ~(~_wgslsmith_sub_i32(reverseBits(var_1.x), ~_wgslsmith_sub_i32(u_input.b, -2147483647i)));
    var var_3 = true;
    return var_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global3 = u_input.a;
    let var_0 = 42544i;
    let var_1 = func_3(-_wgslsmith_mult_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, var_0, arg_1.x, arg_1.x), vec4<i32>(u_input.b, -4016i, 1i, -1i), vec4<i32>(1i, 45504i, arg_1.x, arg_1.x))), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(14362i, -18503i, u_input.b, -52154i), vec4<i32>(u_input.b, u_input.b, -14433i, 2147483647i)))), arg_1.zy, Struct_2(arg_2, arg_3.a, all(func_2(_wgslsmith_f_op_f32(sign(arg_0.x))))));
    let var_2 = Struct_2(Struct_1(func_3(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -2147483647i), vec4<i32>(arg_1.x, u_input.b, -2147483647i, -1i)), firstLeadingBit(vec2<i32>(19228i, -75168i)), Struct_2(var_1, Struct_1(true), arg_0.x < -1124f)).a), arg_2, !(!(!all(vec4<bool>(true, arg_3.c, var_1.a, true)))));
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(~global3.x, _wgslsmith_mod_u32(global3.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2354u, 29u)], 29u)])) << (u_input.a.x % 32u), ~(~15111u)) ^ countOneBits(vec2<u32>(~(~0u), u_input.c.x));
    return Struct_2(func_3(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 20078i, var_0, u_input.b) ^ (vec4<i32>(u_input.b, 2147483647i, 1984i, 1313i) & vec4<i32>(arg_1.x, var_0, -696i, u_input.b)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, var_0, 0i, -36320i), vec4<i32>(40658i, u_input.b, u_input.b, 13576i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0, -89579i, arg_1.x), vec4<i32>(0i, arg_1.x, 0i, var_0)))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0, var_0), var_0), -_wgslsmith_div_i32(arg_1.x, u_input.b)), global2[_wgslsmith_index_u32(countOneBits(reverseBits(122296u)) >> (select(min(14117u, 0u), ~var_3.x, all(vec3<bool>(var_1.a, arg_2.a, arg_2.a))) % 32u), 20u)]), var_1, arg_1.x < _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 2147483647i) ^ (arg_1.zy & vec2<i32>(46409i, 2206i)), max(arg_1.zz ^ vec2<i32>(-2147483647i, -26783i), _wgslsmith_mod_vec2_i32(arg_1.xx, arg_1.yx))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(all(select(vec2<bool>(func_2(-195f).x, true), !vec2<bool>(arg_1.a, false), vec2<bool>(!arg_1.a, false))));
    global1 = array<u32, 29>();
    return _wgslsmith_div_f32(-476f, -1384f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 51561u;
    global0 = array<vec4<f32>, 4>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f - 2389f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(vec2<f32>(-1209f, 1289f), vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_1(true), global4[_wgslsmith_index_u32(28303u, 6u)]), Struct_1(true))) + _wgslsmith_f_op_f32(471f * 369f)));
    let var_2 = Struct_2(func_3(max(vec4<i32>(~1i, u_input.b, countOneBits(u_input.b), u_input.b | -4511i), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 1i, 1i, u_input.b), vec4<i32>(u_input.b, 23769i, u_input.b, u_input.b)), ~vec4<i32>(-1i, 14561i, u_input.b, -23383i))), -(firstTrailingBit(vec2<i32>(1i, 0i)) << (~vec2<u32>(0u, 1u) % vec2<u32>(32u))), Struct_2(Struct_1(true), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, 1542f)), -vec3<i32>(53443i, -20288i, u_input.b), Struct_1(var_1.a), global2[_wgslsmith_index_u32(max(4437u, global3.x), 20u)]).a, !(!var_1.a))), func_3(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-1i, 2147483647i, 1i, u_input.b)) ^ vec4<i32>(countOneBits(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -66113i), vec2<i32>(u_input.b, -1i)), abs(4137i), -30954i >> (0u % 32u)), _wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.b, 1i), ~vec2<i32>(u_input.b, u_input.b)), abs(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-938f, 1452f), vec2<f32>(735f, -484f)))), vec3<i32>(-1i, -u_input.b, u_input.b >> (84444u % 32u)), Struct_1(!var_1.a), func_1(vec2<f32>(-130f, 192f), -vec3<i32>(-2147483647i, 1i, 2147483647i), Struct_1(false), Struct_2(Struct_1(false), Struct_1(true), var_1.a)))), true);
    var var_3 = select(vec2<bool>(false, true), vec2<bool>(true, true), true);
    var var_4 = vec3<u32>(global1[_wgslsmith_index_u32(min(~_wgslsmith_mult_u32(global3.x, u_input.c.x), global1[_wgslsmith_index_u32(0u | global3.x, 29u)]) & 61192u, 29u)], 1u << (global1[_wgslsmith_index_u32(0u, 29u)] % 32u), ~(~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], 1u)) | 71562u));
    var_3 = select(!vec2<bool>(var_1.a, (1u << (u_input.a.x % 32u)) <= 1u), select(!vec2<bool>(false, var_2.a.a), vec2<bool>(false, !any(vec3<bool>(var_2.b.a, true, var_3.x))), false), vec2<bool>(var_1.a, var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) * _wgslsmith_div_f32(-481f, -467f)))), 1u);
}

