struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<bool>, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(abs(1i), select(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true)), true), -u_input.c.x);
    var var_1 = u_input.e.x;
    let var_2 = Struct_1(2147483647i ^ -(~u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c.yyz | vec3<i32>(u_input.b, var_0.c, u_input.c.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 10164i, -33339i), u_input.c.yxx, u_input.c.xyz)), u_input.b, u_input.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 51104i, -1i, -2147483647i), vec4<i32>(-1i, -1065i, -1i, u_input.c.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 18384i), vec2<i32>(-5097i, 35071i)), abs(var_0.c)), u_input.c, vec4<i32>(-1i, abs(2147483647i), u_input.c.x >> (1u % 32u), _wgslsmith_sub_i32(u_input.b, 2147483647i)))));
    var var_3 = Struct_4(~(i32(-1i) * -min(35817i, -63938i)), select(vec4<i32>(-22026i, 2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(-55709i, -10357i)) >> (~63778u % 32u), reverseBits(_wgslsmith_add_i32(var_0.c, global0.x))), _wgslsmith_sub_vec4_i32(var_2.b, vec4<i32>(var_2.b.x, min(-14935i, var_2.a), -1i, var_2.a)), global1[_wgslsmith_index_u32(1u, 9u)]), select(u_input.e, reverseBits(vec2<u32>(4294967295u, 10u) >> (~vec2<u32>(u_input.a.x, 58534u) % vec2<u32>(32u))), select(vec2<bool>(!var_0.b.x, true), var_0.b.zx, all(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)) && var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1000f, 188f, 1000f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-165f, -667f, 1299f, -184f))), _wgslsmith_div_vec4_f32(vec4<f32>(1246f, 1126f, -1287f, 1520f), vec4<f32>(-609f, 819f, -1123f, 790f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(454f, _wgslsmith_f_op_f32(sign(869f)), _wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(max(-1696f, -583f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(542f, 158f, 1228f, 306f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, -700f, -315f, 130f)), select(vec4<bool>(true, var_0.b.x, false, true), vec4<bool>(var_0.b.x, true, true, var_0.b.x), false))))));
    let var_4 = min(countOneBits(reverseBits(u_input.c)) ^ (~var_3.b << (vec4<u32>(4294967295u, u_input.a.x, 42467u, var_3.c.x) % vec4<u32>(32u))), var_2.b) & -_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(var_2.b.x, global0.x, var_2.a, var_0.c), var_3.b, vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)), _wgslsmith_sub_vec4_i32(min(var_2.b, vec4<i32>(var_3.b.x, 39104i, var_3.a, -2147483647i)), vec4<i32>(var_0.c, -1i, var_3.b.x, var_2.a)), -vec4<i32>(-30280i, var_3.b.x, var_2.a, 1i) & max(var_2.b, vec4<i32>(53616i, 0i, global0.x, var_2.b.x)));
    return countOneBits(~_wgslsmith_sub_i32(global0.x ^ ~var_4.x, -2147483647i));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_add_i32(func_3(), i32(-1i) * -20604i), u_input.c), ~(-u_input.c.xyx));
    var_0 = Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~49131i, _wgslsmith_add_i32(var_0.a.a, global0.x)), _wgslsmith_mult_i32(var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 50621i, -1i), vec3<i32>(u_input.b, global0.x, 1i)))), u_input.c & vec4<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-92939i, -2147483647i), vec2<i32>(1i, -5272i)), select(14561i, 62507i, arg_0), -7374i)), ~abs(min(vec3<i32>(global0.x, var_0.a.b.x, var_0.a.a), vec3<i32>(u_input.c.x, 1i, global0.x)) >> (~vec3<u32>(4294967295u, 46790u, u_input.a.x) % vec3<u32>(32u))));
    var var_1 = -1i;
    let var_2 = firstLeadingBit(~_wgslsmith_add_u32(53967u, _wgslsmith_mult_u32(~9119u, _wgslsmith_div_u32(21432u, 26330u))));
    global1 = array<vec4<bool>, 9>();
    return 39775i;
}

fn func_1(arg_0: vec2<f32>) -> vec3<bool> {
    global0 = vec2<i32>(func_2(false) >> (_wgslsmith_mult_u32(min(u_input.a.x, ~8749u), u_input.e.x) % 32u), u_input.d);
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    return !select(vec3<bool>(!(u_input.e.x > 26133u), all(select(vec4<bool>(false, false, false, false), global1[_wgslsmith_index_u32(u_input.a.x, 9u)], true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), false), vec3<bool>(false, true, all(vec3<bool>(false, true, true))));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(~global0.x >> (arg_2.x % 32u), vec4<i32>(u_input.c.x, arg_1.x, -arg_1.x, -firstLeadingBit(2147483647i))), ~(-vec3<i32>(abs(14431i), arg_1.x, arg_1.x & -31640i)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(abs(u_input.a.x) << (u_input.a.x % 32u), u_input.c.xyy | u_input.c.xzx, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, u_input.a.x)), vec2<u32>(4294967295u, firstTrailingBit(u_input.e.x))), u_input.e), Struct_3(~_wgslsmith_mod_i32(u_input.b >> (20282u % 32u), ~u_input.c.x), func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-725f, -588f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, 830f))))), _wgslsmith_sub_i32(abs(global0.x), max(global0.x, 17268i) & abs(global0.x))));
    var var_1 = Struct_3(reverseBits(~(-var_0.c) >> (_wgslsmith_mod_u32(0u, u_input.a.x) % 32u)), vec3<bool>(select(_wgslsmith_div_u32(83165u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, u_input.a.x), vec4<u32>(10691u, u_input.a.x, 23728u, u_input.e.x)), true) != 35839u, true, select(var_0.b.x, u_input.e.x <= abs(u_input.e.x), var_0.b.x)), global0.x);
    global1 = array<vec4<bool>, 9>();
    var var_2 = Struct_4(_wgslsmith_add_i32(u_input.b, -u_input.c.x), _wgslsmith_sub_vec4_i32(~(u_input.c >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 11375u, u_input.a.x), vec4<u32>(18680u, u_input.e.x, u_input.e.x, 66681u)) % vec4<u32>(32u))), ~select(u_input.c, vec4<i32>(var_1.c, 15067i, -35230i, -31702i), !global1[_wgslsmith_index_u32(948u, 9u)])), ~vec2<u32>(1u, 18669u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-833f * -1000f), 1000f, _wgslsmith_f_op_f32(ceil(1686f)), _wgslsmith_f_op_f32(333f * 939f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(649f, 968f, -287f, 1102f), vec4<f32>(-1000f, 1792f, 396f, -1800f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, -434f, 1193f, 403f) - vec4<f32>(1000f, -290f, -612f, -1050f))))));
    let var_3 = false;
    var var_4 = vec3<i32>(-1i) * -(vec3<i32>(i32(-1i) * -2147483647i, -var_0.c, _wgslsmith_mod_i32(var_1.a, var_2.b.x)) & vec3<i32>(var_2.a, _wgslsmith_dot_vec2_i32(var_2.b.xy, vec2<i32>(-4259i, 0i)), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, -1544f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.d.x)))), _wgslsmith_f_op_f32(select(1122f, var_2.d.x, any(vec2<bool>(var_0.b.x, var_3))))), u_input.b, _wgslsmith_f_op_f32(trunc(var_2.d.x)), ~vec3<i32>(_wgslsmith_mod_i32(-2147483647i, abs(var_0.c)), var_4.x, max(global0.x, -1i) << (~var_2.c.x % 32u)));
}

