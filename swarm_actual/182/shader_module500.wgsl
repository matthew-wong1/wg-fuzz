struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<u32>(63147u, 14756u, 16850u, 78912u), vec4<bool>(true, false, true, false), false), Struct_1(vec4<u32>(4294967295u, 0u, 3666u, 0u), vec4<bool>(false, true, true, true), false), Struct_1(vec4<u32>(1u, 25847u, 0u, 1u), vec4<bool>(true, true, false, false), true), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<bool>(false, false, true, true), false), Struct_1(vec4<u32>(17546u, 0u, 1u, 49440u), vec4<bool>(true, true, true, true), false), Struct_1(vec4<u32>(50613u, 0u, 20221u, 1u), vec4<bool>(true, false, false, true), false), Struct_1(vec4<u32>(9965u, 94950u, 4294967295u, 12848u), vec4<bool>(false, true, true, true), false), Struct_1(vec4<u32>(4294967295u, 0u, 47051u, 4294967295u), vec4<bool>(true, true, true, false), false), Struct_1(vec4<u32>(0u, 40489u, 0u, 9118u), vec4<bool>(false, false, true, true), true), Struct_1(vec4<u32>(29705u, 47647u, 0u, 1u), vec4<bool>(false, false, false, false), true), Struct_1(vec4<u32>(97988u, 1u, 19665u, 15224u), vec4<bool>(true, false, false, false), true), Struct_1(vec4<u32>(17747u, 1u, 1u, 4294967295u), vec4<bool>(true, false, true, false), true), Struct_1(vec4<u32>(18997u, 11950u, 43354u, 4294967295u), vec4<bool>(false, true, true, true), false), Struct_1(vec4<u32>(27394u, 56001u, 2804u, 1u), vec4<bool>(true, true, true, false), false), Struct_1(vec4<u32>(11682u, 4294967295u, 92643u, 4294967295u), vec4<bool>(false, false, true, false), false), Struct_1(vec4<u32>(44690u, 41268u, 48827u, 45065u), vec4<bool>(true, true, true, false), true), Struct_1(vec4<u32>(0u, 70065u, 47264u, 83283u), vec4<bool>(true, true, false, true), false), Struct_1(vec4<u32>(49760u, 1814u, 4294967295u, 1u), vec4<bool>(true, true, false, false), false), Struct_1(vec4<u32>(24664u, 0u, 1u, 38598u), vec4<bool>(true, true, true, false), true), Struct_1(vec4<u32>(0u, 1u, 67449u, 4294967295u), vec4<bool>(true, false, false, false), true), Struct_1(vec4<u32>(1u, 56280u, 69430u, 1u), vec4<bool>(true, true, true, false), false), Struct_1(vec4<u32>(4294967295u, 0u, 7369u, 4294967295u), vec4<bool>(true, true, true, false), true), Struct_1(vec4<u32>(43926u, 1u, 4294967295u, 112060u), vec4<bool>(false, false, false, true), false), Struct_1(vec4<u32>(23739u, 4294967295u, 1u, 4294967295u), vec4<bool>(false, false, true, true), false), Struct_1(vec4<u32>(20393u, 26906u, 1u, 0u), vec4<bool>(true, true, true, false), true), Struct_1(vec4<u32>(8121u, 1u, 1u, 4294967295u), vec4<bool>(false, false, true, false), false), Struct_1(vec4<u32>(85197u, 61563u, 7676u, 35759u), vec4<bool>(true, true, false, false), true));

var<private> global1: array<u32, 8>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> bool {
    return true;
}

fn func_1(arg_0: i32, arg_1: u32) -> vec2<f32> {
    let var_0 = arg_1;
    var var_1 = select(vec2<bool>(true, any(vec4<bool>(false, true, func_2(arg_1, vec3<i32>(28258i, -31745i, -1i), vec3<f32>(1950f, 246f, 1301f)), 0i != arg_0))), vec2<bool>(true, true), select(vec2<bool>(!all(vec2<bool>(false, false)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true))), vec2<bool>(true, (arg_1 > 14954u) & true), any(vec3<bool>(true, true, all(vec4<bool>(true, true, false, true))))));
    var var_2 = ~vec2<u32>(u_input.a, arg_1);
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(126f, -1861f), vec2<f32>(-1183f, 1508f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1951f, 790f), vec2<f32>(142f, 111f))))))) - vec2<f32>(459f, 1000f));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = ~countOneBits(-2147483647i) | countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -21979i, -30428i), vec3<i32>(-1i, -2147483647i, 29211i)), vec3<i32>(1i, 1i, 1i)) << (global1[_wgslsmith_index_u32(~(~0u), 8u)] % 32u));
    var_0 = i32(-1i) * -1i;
    global0 = array<Struct_1, 27>();
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    return firstLeadingBit(2147483647i);
}

fn func_4(arg_0: vec3<i32>) -> vec3<bool> {
    global0 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_clamp_vec3_i32(arg_0 | -_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(18120i, -1i, arg_0.x), vec3<i32>(-2147483647i, -1i, -1i)), select(vec3<i32>(arg_0.x, 25378i, -26060i), vec3<i32>(arg_0.x, -1i, 0i), true), abs(vec3<i32>(-1i, arg_0.x, arg_0.x))), vec3<i32>(_wgslsmith_add_i32(countOneBits(_wgslsmith_mult_i32(1i, -2147483647i)), abs(41251i) ^ (arg_0.x << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46081u, 8u)], 8u)] % 32u))), ~arg_0.x, 1i), abs(max(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, -61420i, arg_0.x) & vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, 55697i, 51625i)), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 1i), vec3<i32>(0i, arg_0.x, arg_0.x), arg_0)))));
    let var_1 = _wgslsmith_div_u32(13505u, min(u_input.a, (~0u ^ global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 0u), 8u)]) | u_input.a));
    var var_2 = u_input.a & ~4294967295u;
    var var_3 = global0[_wgslsmith_index_u32(~(~reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_1, 8u)], 8u)], ~43823u), 8u)])), 27u)];
    return vec3<bool>(false, any(select(var_3.b.xwx, !select(vec3<bool>(var_3.b.x, var_3.c, var_3.b.x), var_3.b.wxx, var_3.b.xwy), !select(var_3.b.zzx, vec3<bool>(false, true, var_3.c), true))), var_1 <= u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<Struct_1, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(323f, 778f), vec2<f32>(791f, 1152f)))), _wgslsmith_f_op_vec2_f32(func_1(-2057i, u_input.a)))) * vec2<f32>(615f, -903f)));
    let var_2 = func_4(~_wgslsmith_sub_vec3_i32(vec3<i32>(~(-5159i), func_3(vec3<u32>(4294967295u, 64195u, 4294967295u)), max(2147483647i, 34064i)), vec3<i32>(1i, 1i, 1i)));
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 8u)])), vec3<u32>(1u, 14752u, 40437u)), 148758u, var_0), vec4<u32>(select(abs(39688u), 42342u, true && var_2.x), global1[_wgslsmith_index_u32(31767u, 8u)] >> (global1[_wgslsmith_index_u32(u_input.a, 8u)] % 32u), ~5042u, ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5344u, 8u)], 8u)], 4294967295u)), vec4<u32>(4294967295u, ~(~4294967295u), select(global1[_wgslsmith_index_u32(0u, 8u)], 55251u, var_2.x), 0u)), select(vec4<bool>(func_4(-vec3<i32>(-1i, 2147483647i, -2147483647i)).x, !(!var_2.x), var_2.x, all(vec2<bool>(false, var_2.x))), vec4<bool>(var_2.x, !var_2.x, true, true), !select(vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x), true)), !var_2.x);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-730f, var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1212f, var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2263f, -514f), vec2<f32>(var_1.x, 525f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -444f) - vec2<f32>(var_1.x, var_1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -471f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-853f - var_1.x), var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1000f))))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) + 206f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(848f + var_4), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -979f), _wgslsmith_f_op_f32(-var_1.x), 652f, var_1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, 377f, 547f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1478f, 1293f, 363f, var_4)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -2945f, 1044f, var_4) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, -1000f, var_4, var_1.x)))))));
}

