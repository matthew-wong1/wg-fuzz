struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 6>;

var<private> global2: array<vec3<bool>, 29>;

var<private> global3: array<vec4<i32>, 31>;

var<private> global4: array<u32, 29> = array<u32, 29>(17276u, 1u, 43000u, 15466u, 11525u, 44156u, 24466u, 1u, 4294967295u, 47350u, 15072u, 4294967295u, 16346u, 0u, 1u, 4294967295u, 0u, 0u, 4294967295u, 0u, 100628u, 0u, 0u, 1u, 25252u, 8222u, 4294967295u, 1u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = arg_1;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(arg_0.a)))))), arg_1.b);
    global1 = array<u32, 6>();
    let var_0 = arg_1;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1422f + var_0.a.x), global0.a.x, _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))) + 127f)), max(vec4<u32>(_wgslsmith_div_u32(arg_1.b.x, ~4294967295u), arg_1.b.x, _wgslsmith_mult_u32(global0.b.x >> (global4[_wgslsmith_index_u32(15488u, 29u)] % 32u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], global0.b.x)), ~global4[_wgslsmith_index_u32(5394u, 29u)]), vec4<u32>(0u & firstTrailingBit(1u), ~_wgslsmith_add_u32(4294967295u, u_input.a), ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, arg_1.b.x), 6u)], arg_0.b.x)));
    return ~u_input.b.x;
}

fn func_2() -> u32 {
    global2 = array<vec3<bool>, 29>();
    var var_0 = -(_wgslsmith_clamp_i32(max(u_input.b.x, 15012i), ~484i, u_input.b.x ^ u_input.b.x) | u_input.b.x) > func_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * global0.a) * _wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 56094u, u_input.c, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 6u)], 29u)]), global0.b & vec4<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7489u, 29u)], 6u)], 0u, u_input.a, u_input.a))), Struct_1(global0.a, ~vec4<u32>(1u, 21443u, u_input.c, 3294u)));
    var var_1 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, true))), true));
    global3 = array<vec4<i32>, 31>();
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x)))), -1235f, -128f, _wgslsmith_f_op_f32(-global0.a.x)), vec4<u32>(global0.b.x, ~reverseBits(57489u << (global0.b.x % 32u)), select(~u_input.a ^ ~global0.b.x, _wgslsmith_mult_u32(~u_input.a, 1u), true), ~(~firstLeadingBit(u_input.c))));
    return global4[_wgslsmith_index_u32(15778u, 29u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    global3 = array<vec4<i32>, 31>();
    var var_0 = ~341i;
    let var_1 = vec4<bool>(true, false, !arg_2, true);
    let var_2 = select(vec2<u32>(~(func_2() ^ func_2()), _wgslsmith_div_u32(4294967295u, ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28241u, 6u)], 6u)]))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, arg_3.b.x, ~arg_1.b.x), arg_1.b), global0.b.x), true);
    var_0 = i32(-1i) * -14915i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-644f + -1000f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global0.a)), min(vec4<u32>(1u, ~global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 6u)], 29u)], ~(global0.b.x << (global1[_wgslsmith_index_u32(global0.b.x, 6u)] % 32u)), (global0.b.x >> (global0.b.x % 32u)) ^ max(17600u, 0u)), vec4<u32>(u_input.c, abs(1u), _wgslsmith_add_u32(0u, 54727u), ~global1[_wgslsmith_index_u32(u_input.a, 6u)])));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.a, arg_0.a, vec4<bool>(true, true, true, true))), global0.b), func_4(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_2.a.x, -1680f, 1699f), vec4<f32>(arg_2.a.x, arg_0.a.x, 626f, 1216f)), _wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(68015u, 24729u, arg_1, 38695u))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, arg_0.a.x, arg_0.a.x, 1638f))), (vec4<u32>(arg_3, 0u, global4[_wgslsmith_index_u32(4294967295u, 29u)], 16372u) >> (arg_0.b % vec4<u32>(32u))) >> (arg_0.b % vec4<u32>(32u))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, global0.a.x, arg_2.a.x, -1321f))), arg_0.b << (arg_2.b % vec4<u32>(32u))), func_4(func_4(Struct_1(arg_0.a, arg_2.b), arg_0, global0.a.x), func_4(arg_0, arg_2, 481f), 881f), 367f).a.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -1000f))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(-1000f, arg_2.a.x, global0.a.x, var_0.a.x))))) - global0.a), vec4<u32>(~global4[_wgslsmith_index_u32(1u, 29u)], ~(~1u), _wgslsmith_mod_u32(min(arg_0.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(29225u, arg_3, 1u), vec3<u32>(u_input.c, arg_3, 65194u))) << (_wgslsmith_add_u32(~arg_2.b.x, ~global0.b.x) % 32u), max(abs(arg_1 & 46565u), arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(global0.a, global0.b), 64644u, func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<f32>(global0.a.x, -1695f, global0.a.x, 405f), Struct_1(vec4<f32>(-414f, -318f, global0.a.x, 177f), vec4<u32>(1u, 54011u, u_input.a, u_input.a)), false, Struct_1(global0.a, global0.b))), _wgslsmith_f_op_f32(-global0.a.x), -397f, 607f), abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], u_input.c, u_input.a, 16298u))), Struct_1(vec4<f32>(global0.a.x, -881f, _wgslsmith_f_op_f32(floor(-1021f)), global0.a.x), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -161f)), 79575u);
    var_0 = Struct_1(vec4<f32>(global0.a.x, 1176f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-207f, func_5(Struct_1(global0.a, vec4<u32>(16512u, 2064u, 20759u, global4[_wgslsmith_index_u32(28293u, 29u)])), var_0.b.x, Struct_1(var_0.a, var_0.b), u_input.c).a.x)), global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), 983f)), select(vec4<u32>(0u, ~global1[_wgslsmith_index_u32(41006u, 6u)], var_0.b.x, u_input.a), ~(~(~vec4<u32>(u_input.c, 57179u, var_0.b.x, 0u))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), max(vec4<u32>(84229u, 13341u, 1u, u_input.a), max(global0.b, ~vec4<u32>(29195u, 4294967295u, 4294967295u, 1u) | firstLeadingBit(var_0.b))));
    global1 = array<u32, 6>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(675f, 543f, -1910f, 424f) + vec4<f32>(var_1.a.x, 1329f, var_0.a.x, -137f))), var_1, any(vec2<bool>(false, true)), func_5(func_4(var_1, Struct_1(var_0.a, vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.c, 6u)], 44562u, 4294967295u)), -333f), ~global1[_wgslsmith_index_u32(var_1.b.x, 6u)], func_4(var_1, var_1, var_0.a.x), 1u)))), var_0.a.x);
    global1 = array<u32, 6>();
    var var_3 = _wgslsmith_div_vec4_i32(abs(-((vec4<i32>(57970i, -77670i, 0i, u_input.b.x) ^ global3[_wgslsmith_index_u32(1u, 31u)]) | vec4<i32>(u_input.b.x, u_input.b.x, -8722i, 2147483647i))), firstTrailingBit(reverseBits(-vec4<i32>(2147483647i, 0i, u_input.b.x, -1i))) << (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.c, u_input.a, 22426u, 0u)), var_0.b) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global1[_wgslsmith_index_u32(53362u, 6u)], 16722u, abs(_wgslsmith_div_u32(var_0.b.x, global4[_wgslsmith_index_u32(0u, 29u)])), 1u) & global0.b);
}

