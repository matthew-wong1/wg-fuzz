struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 4294967295u, 0u, 33604u), vec3<i32>(2147483647i, 6130i, -1i), vec4<i32>(i32(-2147483648), 56546i, -1545i, 1i)), Struct_1(vec2<bool>(false, true), vec4<u32>(13214u, 67956u, 4294967295u, 4294967295u), vec3<i32>(2147483647i, 9442i, 35966i), vec4<i32>(2147483647i, -40668i, 0i, -15167i)), Struct_1(vec2<bool>(false, false), vec4<u32>(61960u, 1u, 11886u, 27079u), vec3<i32>(-1i, i32(-2147483648), 21296i), vec4<i32>(1i, 1i, 2147483647i, -25246i)), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 1u, 1u, 1u), vec3<i32>(25180i, -6012i, 1106i), vec4<i32>(2147483647i, -12549i, -1i, 45727i)), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 6151u, 13365u, 4294967295u), vec3<i32>(48203i, i32(-2147483648), 1i), vec4<i32>(-1i, i32(-2147483648), -21974i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec4<u32>(17895u, 4294967295u, 0u, 31552u), vec3<i32>(-65715i, 61190i, 18578i), vec4<i32>(-66735i, 1i, 54860i, 1i)), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 0u, 1u, 56226u), vec3<i32>(21583i, 2292i, -60715i), vec4<i32>(-8048i, -19736i, 0i, 1i)), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 1u, 0u), vec3<i32>(-2955i, -45663i, 51603i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i)), Struct_1(vec2<bool>(true, false), vec4<u32>(8286u, 4294967295u, 105819u, 4294967295u), vec3<i32>(1i, 2147483647i, 38311i), vec4<i32>(0i, -1i, i32(-2147483648), 0i)), Struct_1(vec2<bool>(true, false), vec4<u32>(43838u, 4294967295u, 31548u, 0u), vec3<i32>(i32(-2147483648), -30698i, -1i), vec4<i32>(1i, -1i, 1i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 8114u, 33005u, 36733u), vec3<i32>(1i, 2147483647i, 0i), vec4<i32>(0i, -5543i, 1i, 67027i)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 4294967295u, 0u, 7346u), vec3<i32>(1i, -1i, 2147483647i), vec4<i32>(1i, 4288i, -1i, -1i)), Struct_1(vec2<bool>(false, true), vec4<u32>(1u, 0u, 1u, 129643u), vec3<i32>(i32(-2147483648), 1i, 0i), vec4<i32>(1i, -1i, 31422i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec4<u32>(53297u, 0u, 1u, 4294967295u), vec3<i32>(0i, 2147483647i, -15770i), vec4<i32>(-1i, 8133i, 1i, -1i)), Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 1u, 0u, 18433u), vec3<i32>(0i, i32(-2147483648), -1i), vec4<i32>(-24039i, 928i, -22740i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec4<u32>(3230u, 19390u, 0u, 0u), vec3<i32>(8131i, 2147483647i, -1i), vec4<i32>(-30038i, -30177i, 2147483647i, -10411i)), Struct_1(vec2<bool>(false, false), vec4<u32>(17813u, 40479u, 0u, 0u), vec3<i32>(-3342i, -30050i, 17277i), vec4<i32>(2147483647i, 0i, 53374i, 23116i)), Struct_1(vec2<bool>(false, false), vec4<u32>(24875u, 22185u, 64099u, 25425u), vec3<i32>(-6898i, -14670i, -1i), vec4<i32>(i32(-2147483648), 0i, -28292i, 5347i)), Struct_1(vec2<bool>(true, false), vec4<u32>(1u, 52055u, 0u, 4294967295u), vec3<i32>(1362i, 1i, 31946i), vec4<i32>(-1i, 2147483647i, 0i, 12636i)), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 1u, 4294967295u, 0u), vec3<i32>(-1i, -36390i, -1i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 27565i)), Struct_1(vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 30513u, 89555u), vec3<i32>(-4751i, -61704i, -752i), vec4<i32>(12173i, i32(-2147483648), -3821i, -1i)), Struct_1(vec2<bool>(true, false), vec4<u32>(32229u, 1u, 1u, 36312u), vec3<i32>(i32(-2147483648), -38798i, 37737i), vec4<i32>(12255i, 0i, 14006i, -61455i)), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 0u, 363u, 0u), vec3<i32>(-48463i, 39120i, 6543i), vec4<i32>(-1i, -8958i, 47071i, 1i)), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 4294967295u, 16144u, 1u), vec3<i32>(-2158i, i32(-2147483648), 0i), vec4<i32>(46832i, -1i, 2147483647i, -17264i)), Struct_1(vec2<bool>(true, false), vec4<u32>(15968u, 72211u, 4294967295u, 97354u), vec3<i32>(24786i, 0i, 0i), vec4<i32>(-1i, -1i, 33055i, 2566i)), Struct_1(vec2<bool>(false, false), vec4<u32>(8210u, 0u, 14116u, 59663u), vec3<i32>(15380i, 68034i, 2147483647i), vec4<i32>(i32(-2147483648), 18413i, 7156i, 39065i)), Struct_1(vec2<bool>(false, false), vec4<u32>(11271u, 0u, 0u, 4294967295u), vec3<i32>(70830i, -14425i, 1i), vec4<i32>(40118i, -1i, 6370i, i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec4<u32>(31569u, 12605u, 20636u, 1u), vec3<i32>(-19599i, 2147483647i, -11545i), vec4<i32>(i32(-2147483648), 5525i, -1i, -11730i)), Struct_1(vec2<bool>(true, false), vec4<u32>(1u, 53353u, 52950u, 15588u), vec3<i32>(-30203i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), -45737i, 2147483647i, 0i)), Struct_1(vec2<bool>(false, true), vec4<u32>(0u, 0u, 6895u, 9194u), vec3<i32>(35016i, 1i, -7042i), vec4<i32>(-1i, -1i, 17350i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 1u, 4294967295u, 22159u), vec3<i32>(22458i, -19488i, -53940i), vec4<i32>(2147483647i, -1i, -2730i, -26561i)));

var<private> global1: array<u32, 29> = array<u32, 29>(18767u, 4294967295u, 52486u, 0u, 47500u, 1u, 58641u, 4294967295u, 41895u, 53783u, 85839u, 66575u, 22275u, 0u, 53985u, 0u, 0u, 16000u, 4294967295u, 0u, 14029u, 1u, 32406u, 4294967295u, 0u, 25463u, 4294967295u, 4294967295u, 127744u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(39444u, ~select(u_input.a.x, ~u_input.c, true)) ^ ~0u, 31u)];
    var var_1 = vec3<bool>(all(select(vec4<bool>(true, false, false, any(vec2<bool>(true, var_0.a.x))), !select(vec4<bool>(true, var_0.a.x, false, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(false, var_0.a.x, false, var_0.a.x)), vec4<bool>(var_0.a.x, 4294967295u != u_input.a.x, true, true))), false || !var_0.a.x, var_0.a.x);
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    var var_2 = _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(u_input.b.wx, _wgslsmith_mod_vec2_i32(var_0.d.wz, var_0.c.yx)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) * 1553f)));
}

fn func_1() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_2()));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(408f + -1241f) - -325f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-257f - -796f), _wgslsmith_f_op_f32(369f + 1384f))))) - _wgslsmith_div_f32(663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2420f - -552f))));
    global1 = array<u32, 29>();
    global0 = array<Struct_1, 31>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2066f, _wgslsmith_f_op_f32(min(-868f, 878f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-460f)) * 505f)) - _wgslsmith_div_f32(-556f, 251f)), 1609f);
}

fn func_3(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = ~_wgslsmith_mod_i32(reverseBits(u_input.b.x) | _wgslsmith_div_i32(u_input.b.x, i32(-1i) * -48693i), _wgslsmith_dot_vec2_i32(u_input.b.zx >> (u_input.a.wx % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(-2147483647i, u_input.b.x))) | u_input.b.x);
    let var_1 = Struct_1(select(vec2<bool>(false, all(vec4<bool>(true, false, true, false))), !select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true)), u_input.a, -_wgslsmith_mod_vec3_i32(u_input.b.zxz, u_input.b.wyx), abs(vec4<i32>(~(-2147483647i), -(1i ^ u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(2565i, u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), _wgslsmith_mult_i32(-10147i >> (0u % 32u), _wgslsmith_mod_i32(-3496i, u_input.b.x)))));
    let var_2 = ~abs(u_input.b.wyx);
    global0 = array<Struct_1, 31>();
    var var_3 = !var_1.a.x;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))), vec3<u32>(_wgslsmith_div_u32(var_1.b.x << (34554u % 32u), min(var_1.b.x, 0u)), abs(~24158u), u_input.a.x >> (~1u % 32u)) >> (u_input.a.wyy % vec3<u32>(32u)), ~vec2<i32>(_wgslsmith_add_i32(select(2147483647i, u_input.b.x, var_1.a.x), firstLeadingBit(u_input.b.x)), ~var_1.c.x << (~global1[_wgslsmith_index_u32(u_input.a.x, 29u)] % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = ~_wgslsmith_sub_u32(max(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], firstTrailingBit(u_input.a.x)), 76227u), ~(~31816u));
    var var_2 = abs(var_0.zxw);
    let x = u_input.a;
    s_output = func_3(_wgslsmith_f_op_vec2_f32(func_1()));
}

