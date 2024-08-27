struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u, i32(-2147483648), vec3<u32>(4294967295u, 1u, 1u), -10625i), Struct_1(0u, i32(-2147483648), vec3<u32>(16033u, 1u, 62558u), 0i), Struct_1(104366u, 49096i, vec3<u32>(0u, 4574u, 1u), 26047i), Struct_1(4294967295u, 8123i, vec3<u32>(11384u, 1u, 91732u), -38268i), Struct_1(0u, -7173i, vec3<u32>(72561u, 1u, 2962u), 29661i), Struct_1(4488u, i32(-2147483648), vec3<u32>(0u, 4294967295u, 25380u), -5961i), Struct_1(4294967295u, -10565i, vec3<u32>(0u, 68730u, 33015u), 1i), Struct_1(13119u, -48679i, vec3<u32>(37153u, 38768u, 14147u), 20030i), Struct_1(13161u, 15192i, vec3<u32>(1u, 25774u, 47712u), 1176i), Struct_1(2034u, 2147483647i, vec3<u32>(4294967295u, 35260u, 31043u), 34010i), Struct_1(105996u, 2147483647i, vec3<u32>(877u, 0u, 95822u), 2147483647i), Struct_1(42284u, 22549i, vec3<u32>(0u, 1u, 4294967295u), -61239i), Struct_1(4294967295u, -13695i, vec3<u32>(1u, 19526u, 0u), 2147483647i), Struct_1(4294967295u, 19698i, vec3<u32>(0u, 2864u, 26009u), 1i), Struct_1(0u, 1i, vec3<u32>(1u, 0u, 4294967295u), i32(-2147483648)), Struct_1(60064u, -1i, vec3<u32>(13804u, 25829u, 38766u), 2147483647i), Struct_1(1u, -20121i, vec3<u32>(1u, 1u, 0u), -27460i), Struct_1(16469u, -37170i, vec3<u32>(0u, 43589u, 36734u), 11381i), Struct_1(75208u, -29951i, vec3<u32>(12098u, 20237u, 49369u), -1i), Struct_1(97795u, -7971i, vec3<u32>(66720u, 4294967295u, 1952u), 0i), Struct_1(4294967295u, 0i, vec3<u32>(0u, 0u, 20309u), -70244i), Struct_1(83058u, -1i, vec3<u32>(39635u, 4294967295u, 9596u), 13363i), Struct_1(64721u, 10571i, vec3<u32>(32089u, 4294967295u, 88818u), i32(-2147483648)), Struct_1(19528u, 1i, vec3<u32>(24795u, 1u, 4294967295u), 66269i), Struct_1(0u, i32(-2147483648), vec3<u32>(4294967295u, 12746u, 1u), i32(-2147483648)), Struct_1(0u, 0i, vec3<u32>(9289u, 4294967295u, 1u), 1i), Struct_1(4294967295u, -1937i, vec3<u32>(30562u, 0u, 17108u), 0i));

var<private> global2: array<Struct_1, 29>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_3;
    let var_1 = arg_1;
    let var_2 = arg_3;
    let var_3 = abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(min(4294967295u, max(var_0.c.x, arg_0)), _wgslsmith_sub_u32(~var_2.a, 15874u)), var_0.c.x));
    global1 = array<Struct_1, 27>();
    return var_2.c.yx;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = global0.x;
    var var_1 = -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, u_input.a, ~2147483647i), abs(select(vec3<i32>(u_input.a, arg_0.b, -45312i), vec3<i32>(u_input.a, -1i, arg_2.d), !vec3<bool>(global0.x, false, true))));
    let var_2 = -_wgslsmith_mod_i32(~(-(-20103i & arg_0.b)), 52034i);
    return arg_1;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec2<bool> {
    global2 = array<Struct_1, 29>();
    global0 = vec2<bool>((any(vec2<bool>(true, true)) && !global0.x) & ((arg_1 < arg_1) | any(!vec2<bool>(global0.x, global0.x))), select(any(vec2<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true)), true, !all(!vec2<bool>(global0.x, true))));
    global2 = array<Struct_1, 29>();
    var var_0 = global2[_wgslsmith_index_u32(1u, 29u)];
    let var_1 = vec2<f32>(-1238f, _wgslsmith_div_f32(1667f, -1000f));
    return select(vec2<bool>(!(!global0.x) == true, _wgslsmith_mult_u32(0u, var_0.a) <= arg_0.x), vec2<bool>(!global0.x, func_3(Struct_1(~var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -5136i), vec2<i32>(-12757i, 33338i)), vec3<u32>(arg_0.x, arg_0.x, var_0.c.x), max(u_input.a, u_input.a)), true, Struct_1(arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-2147483647i, 1i)), select(var_0.c, var_0.c, true), firstTrailingBit(-13071i)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(any(select(func_2(func_1(1u, u_input.a, 444f, global1[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_div_f32(-613f, -655f)), func_2(func_1(25262u, u_input.a, 226f, Struct_1(12562u, u_input.a, vec3<u32>(26556u, 1u, 176u), u_input.a)), 670f), global0.x)), false);
    var var_0 = ~abs(_wgslsmith_mult_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(59387u, 4294967295u, 4294967295u), vec3<u32>(1u, 35974u, 21805u)), 4294967295u, false), _wgslsmith_mult_u32(~14671u, ~4294967295u)));
    global0 = vec2<bool>(true, any(vec3<bool>(global0.x, false, global0.x)));
    var var_1 = Struct_1(~0u, _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a, 0i, 26647i, -3947i) & vec4<i32>(u_input.a, -6531i, -2147483647i, 1i)), reverseBits(vec4<i32>(-6435i, 42615i, u_input.a, u_input.a) & vec4<i32>(1i, -1i, u_input.a, u_input.a))) << (39865u % 32u), vec3<u32>(abs(1u), _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(16230u, 1u)), ~(~max(20100u, 36978u))), u_input.a);
    var var_2 = vec3<i32>(u_input.a, 1i, 0i);
    var_2 = vec3<i32>(32488i, var_2.x, 55105i);
    var_0 = var_1.a;
    var_1 = global2[_wgslsmith_index_u32(~var_1.c.x, 29u)];
    global1 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1830f + 296f), 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-421f, -484f) + 1f)))), 1u, -(vec3<i32>(u_input.a, -62757i, 34143i) << (abs(var_1.c) % vec3<u32>(32u))), min(var_2.x, 24286i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(334f, _wgslsmith_div_f32(1440f, 1000f), false))), -126f));
}

