struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~global0.b.x), _wgslsmith_div_vec2_u32(~firstTrailingBit(u_input.c), vec2<u32>(global0.b.x, global0.b.x) >> (~global0.b.yx % vec2<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(273f, -1000f, 728f), vec3<f32>(-343f, -769f, 1000f))) * vec3<f32>(1589f, 1493f, -395f)))), global0.b, Struct_1(false, reverseBits(global0.b)), Struct_1(global0.a, vec4<u32>(u_input.c.x, 58973u, 17151u, global0.b.x)), Struct_1(true, global0.b)), abs(arg_1), arg_0.xz);
    let var_1 = arg_0.x;
    var_0 = Struct_3(select(u_input.c.x << (_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), 0u) % 32u), min(~var_0.a, _wgslsmith_mod_u32(reverseBits(var_0.a), 30951u)), 2147483647i < _wgslsmith_sub_i32(select(73139i, -25225i, var_0.b.d.a), 1i)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.a - vec3<f32>(2291f, 247f, var_0.b.a.x)) - _wgslsmith_f_op_vec3_f32(exp2(var_0.b.a)))), max(vec4<u32>(~global0.b.x, ~76866u, global0.b.x, ~u_input.d.x), var_0.b.d.b), var_0.b.c, Struct_1(select(true, global0.a, !var_0.b.c.a), ~max(var_0.b.b, vec4<u32>(87999u, 97236u, 29451u, u_input.d.x))), Struct_1(true, ~(vec4<u32>(global0.b.x, u_input.d.x, var_0.b.e.b.x, 0u) & vec4<u32>(global0.b.x, u_input.c.x, global0.b.x, 0u)))), abs(arg_0.x), -vec2<i32>(i32(-1i) * -10058i, -var_0.c));
    var_0 = Struct_3(4294967295u, var_0.b, -2147483647i, u_input.a.xz);
    var var_2 = var_0.b.e;
    return !select(!vec4<bool>(all(vec4<bool>(global0.a, global0.a, false, var_0.b.d.a)), any(vec4<bool>(false, false, false, false)), true, all(vec2<bool>(true, true))), vec4<bool>(_wgslsmith_f_op_f32(max(var_0.b.a.x, var_0.b.a.x)) >= _wgslsmith_f_op_f32(step(-1000f, var_0.b.a.x)), true, all(vec3<bool>(false, global0.a, true)), any(select(vec3<bool>(var_2.a, var_0.b.c.a, var_0.b.e.a), vec3<bool>(var_0.b.c.a, false, true), global0.a))), !vec4<bool>(true, global0.a, true, true));
}

fn func_2() -> Struct_3 {
    global0 = Struct_1(false, ~global0.b << (~global0.b % vec4<u32>(32u)));
    let var_0 = _wgslsmith_sub_i32(1i, u_input.b.x) << (_wgslsmith_div_u32(global0.b.x, 31788u) % 32u);
    let var_1 = u_input.d.xy | firstLeadingBit(~vec2<u32>(global0.b.x, 39487u) ^ abs(vec2<u32>(global0.b.x, u_input.d.x) & global0.b.zw));
    var var_2 = ~(-abs(select(firstTrailingBit(53820i), 52194i, true)));
    let var_3 = Struct_1(true, max(select(vec4<u32>(37259u, 6804u, 1u, 1u), vec4<u32>(var_1.x, 1u, 22814u, global0.b.x) & global0.b, func_3(u_input.a, var_0)) & global0.b, select(firstTrailingBit(global0.b << (vec4<u32>(14477u, u_input.d.x, 26832u, var_1.x) % vec4<u32>(32u))), ~vec4<u32>(1u, global0.b.x, 59744u, global0.b.x), !(!global0.a))));
    return Struct_3(var_1.x, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-290f, -239f, 1011f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1092f, -825f))))), var_3.b, var_3, var_3, var_3), -(~(-_wgslsmith_mod_i32(var_0, 28038i))), -(vec2<i32>(1i, var_0) & vec2<i32>(u_input.a.x, 10145i)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_3 {
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    global0 = arg_0.b.e;
    global0 = Struct_1(true, ~(~(~min(vec4<u32>(53959u, 1u, arg_1.b.d.b.x, arg_1.b.d.b.x), arg_0.b.d.b))));
    var var_0 = select(vec2<i32>(2147483647i, -2147483647i), -(~vec2<i32>(-62854i, -30619i)), func_2().b.e.a) & vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.d.x, arg_1.c), func_1(arg_0.b, u_input.c.x, arg_1.a).d.x)), min(arg_0.d.x, 2147483647i));
    var var_1 = arg_0.b;
    let var_2 = func_2();
    return ~abs(13654i);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_1 {
    global0 = arg_3.b.c;
    global0 = arg_3.b.e;
    let var_0 = select(vec2<bool>(!(!func_3(vec4<i32>(u_input.b.x, 1i, -32955i, 39181i), 1i).x), select(false, arg_3.b.c.a || false, func_1(arg_3.b, global0.b.x, arg_2.x).b.d.a)), func_3(u_input.a, 2017i).yy, func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, countOneBits(u_input.b.x), firstLeadingBit(arg_3.c), 10175i), ~(-vec4<i32>(arg_3.c, arg_3.d.x, u_input.b.x, -35423i)), u_input.a), _wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, u_input.a.x), -45658i)).xz);
    global0 = func_2().b.e;
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(arg_3.b.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.a.x) + _wgslsmith_f_op_f32(1731f - arg_3.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f) - _wgslsmith_div_f32(597f, arg_1))), -872f)));
    return arg_3.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(4294967295u, Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 839f, 1560f)))), select(!vec3<bool>(true, global0.a, true), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(true, global0.a, false), false), true))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(global0.b.x, 4294967295u, 4294967295u, global0.b.x), global0.b, vec4<bool>(false, false, global0.a, false)), global0.b, vec4<u32>(global0.b.x, 12015u, u_input.c.x, 0u) >> (vec4<u32>(1u, 1u, global0.b.x, u_input.c.x) % vec4<u32>(32u))) ^ min(~vec4<u32>(global0.b.x, global0.b.x, u_input.d.x, 52721u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 55300u, global0.b.x, global0.b.x), vec4<u32>(global0.b.x, 54392u, global0.b.x, u_input.c.x))), Struct_1(!global0.a & any(vec4<bool>(true, global0.a, global0.a, global0.a)), global0.b), func_5(func_4(Struct_3(1u, Struct_2(vec3<f32>(870f, 746f, 1000f), global0.b, Struct_1(global0.a, global0.b), Struct_1(false, global0.b), Struct_1(false, global0.b)), u_input.b.x, u_input.a.xw), func_1(Struct_2(vec3<f32>(793f, -1116f, -1829f), global0.b, Struct_1(global0.a, global0.b), Struct_1(global0.a, global0.b), Struct_1(false, global0.b)), 1u, 22701u)), -115f, ~_wgslsmith_mult_vec4_u32(vec4<u32>(54673u, 4294967295u, 4294967295u, u_input.d.x), global0.b), func_1(func_2().b, 1u, reverseBits(u_input.c.x))), Struct_1(true, vec4<u32>(1u, global0.b.x << (30187u % 32u), 4294967295u, global0.b.x >> (0u % 32u)))), -func_1(func_1(func_1(Struct_2(vec3<f32>(384f, 151f, 309f), global0.b, Struct_1(false, global0.b), Struct_1(true, global0.b), Struct_1(global0.a, global0.b)), 1u, 20153u).b, func_5(15436i, -805f, global0.b, Struct_3(u_input.d.x, Struct_2(vec3<f32>(-716f, 640f, -1452f), global0.b, Struct_1(global0.a, global0.b), Struct_1(true, global0.b), Struct_1(true, global0.b)), 43587i, vec2<i32>(2147483647i, u_input.a.x))).b.x, select(36993u, 97623u, global0.a)).b, u_input.c.x, 39168u).c, u_input.a.xz);
    global0 = Struct_1(all(func_3(u_input.a, -1i).ww), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(u_input.d, vec3<u32>(8701u, var_0.a, u_input.c.x)), ~global0.b.xwy), firstLeadingBit(_wgslsmith_mult_vec3_u32(var_0.b.e.b.zyy, u_input.d))), ~u_input.c.x, _wgslsmith_sub_u32(1u, 1u), 0u << (~u_input.c.x % 32u)));
    let var_1 = vec3<u32>(~(~(~countOneBits(u_input.c.x))), 115601u, 1u);
    global0 = func_5(_wgslsmith_clamp_i32(u_input.a.x, -22777i, firstTrailingBit(func_4(func_1(Struct_2(var_0.b.a, vec4<u32>(1u, 4294967295u, 68272u, 1u), var_0.b.c, Struct_1(false, vec4<u32>(19599u, 33067u, 15281u, var_1.x)), Struct_1(false, var_0.b.b)), 8444u, 1u), func_1(Struct_2(vec3<f32>(var_0.b.a.x, -1000f, var_0.b.a.x), vec4<u32>(var_0.b.d.b.x, u_input.d.x, 1u, 1u), var_0.b.e, var_0.b.e, var_0.b.e), global0.b.x, global0.b.x)))), 1110f, vec4<u32>(_wgslsmith_clamp_u32(~global0.b.x, ~(~var_1.x), firstTrailingBit(global0.b.x)), ~u_input.d.x, ~(~79747u), func_1(func_2().b, ~var_0.a, ~var_0.b.c.b.x).b.e.b.x), Struct_3(func_5(-20114i, _wgslsmith_f_op_f32(var_0.b.a.x * var_0.b.a.x), vec4<u32>(var_1.x, u_input.d.x, 0u, 4294967295u), func_1(var_0.b, 0u, u_input.c.x)).b.x | abs(func_1(var_0.b, 1u, 41101u).b.b.x), func_2().b, u_input.b.x, vec2<i32>(-1881i | u_input.b.x, func_4(var_0, Struct_3(u_input.c.x, var_0.b, -61932i, var_0.d))) ^ (abs(vec2<i32>(-18510i, u_input.b.x)) >> (vec2<u32>(global0.b.x, var_1.x) % vec2<u32>(32u)))));
    let var_2 = !(!(!(47292u >= global0.b.x) & global0.a));
    let var_3 = u_input.b.x;
    global0 = Struct_1(true, global0.b);
    global0 = Struct_1(global0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(~(67114u & var_1.x), 4294967295u, 43640u, _wgslsmith_mod_u32(var_0.a, var_1.x & var_1.x)), func_1(Struct_2(_wgslsmith_f_op_vec3_f32(min(var_0.b.a, vec3<f32>(1385f, -500f, 1864f))), vec4<u32>(0u, u_input.c.x, 1u, global0.b.x), func_5(2147483647i, 919f, vec4<u32>(10222u, u_input.d.x, 0u, 1567u), Struct_3(u_input.c.x, var_0.b, 6094i, vec2<i32>(42528i, 10578i))), func_1(Struct_2(vec3<f32>(-1039f, 1597f, var_0.b.a.x), vec4<u32>(var_1.x, var_0.a, global0.b.x, 67112u), Struct_1(true, vec4<u32>(81917u, 0u, 1u, u_input.d.x)), var_0.b.c, var_0.b.e), global0.b.x, var_0.b.e.b.x).b.e, Struct_1(global0.a, vec4<u32>(142980u, 1u, u_input.d.x, 1u))), u_input.d.x, 27420u).b.d.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.b.a, vec3<f32>(853f, 202f, 693f)))))), ~var_0.a);
}

