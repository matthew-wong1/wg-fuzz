struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_3(~(-(~(2147483647i << (global0.x % 32u)))), ~abs(~vec4<u32>(global0.x, global0.x, global0.x, global0.x) ^ reverseBits(vec4<u32>(global0.x, 1u, 0u, global0.x))));
    var_0 = Struct_3(global1.x, _wgslsmith_add_vec4_u32(var_0.b, min(~(~vec4<u32>(var_0.b.x, global0.x, global0.x, 0u)), vec4<u32>(27418u, global0.x, 14789u, 60131u) << ((var_0.b << (var_0.b % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let var_1 = 1066f;
    var_0 = Struct_3(global1.x, select((var_0.b << (vec4<u32>(var_0.b.x, 56761u, 33049u, var_0.b.x) % vec4<u32>(32u))) & ~vec4<u32>(1u, var_0.b.x, global0.x, 23439u), vec4<u32>(9717u, var_0.b.x, global0.x, global0.x), select(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, false, false, arg_2.x), true)) ^ var_0.b);
    let var_2 = max(vec3<i32>(-1i, global1.x, global1.x), _wgslsmith_sub_vec3_i32(-vec3<i32>(17817i, var_0.a, 13900i) ^ vec3<i32>(2147483647i, 0i, 64569i), abs(~vec3<i32>(var_0.a, 72980i, -31236i))) << ((vec3<u32>(min(9330u, 0u), 0u, 0u) | var_0.b.xzy) % vec3<u32>(32u)));
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = vec2<i32>(u_input.a, firstTrailingBit(arg_1.a << (abs(global0.x) % 32u))) ^ ~vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 33033i), vec2<i32>(arg_1.a, -46320i)), -arg_1.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)), _wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(abs(arg_0)), -1951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(711f, arg_0)))))));
    let var_2 = 31702u;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-722f, var_1.x))))), arg_0, var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)))), arg_0));
    global0 = ~arg_1.b.xw;
    return ~arg_1.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = arg_0.yx;
    let var_0 = Struct_3(~_wgslsmith_div_i32(max(-38704i, ~0i), -2147483647i), func_4(_wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2402f))), Struct_3(-4177i, func_3(_wgslsmith_f_op_f32(f32(-1f) * -692f), min(u_input.a, u_input.a), vec3<bool>(true, false, true))), arg_0.yy));
    global1 = select(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.a, global1.x)), _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.a, global1.x), -vec2<i32>(global1.x, 12675i)), abs(vec2<i32>(global1.x, u_input.a) ^ vec2<i32>(-12078i, -5944i))), -(~vec2<i32>(global1.x, var_0.a))), min(vec2<i32>(select(_wgslsmith_clamp_i32(u_input.a, global1.x, u_input.a), var_0.a & -1i, any(vec3<bool>(false, true, true))), -u_input.a << ((arg_0.x << (25665u % 32u)) % 32u)), vec2<i32>(_wgslsmith_clamp_i32(select(0i, 2147483647i, true), _wgslsmith_add_i32(-4766i, 8709i), _wgslsmith_sub_i32(0i, 0i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_0.a), vec2<i32>(var_0.a, 24788i)), firstLeadingBit(vec2<i32>(var_0.a, 0i))))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))));
    var var_1 = ~min(abs(arg_0), var_0.b.ywz);
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(global1.x, var_0.a)), firstLeadingBit(vec2<i32>(var_0.a, u_input.a))), ~(~(~vec2<i32>(0i, u_input.a)))), firstTrailingBit(select(vec4<u32>(1u, 1u, 0u, var_0.b.x), vec4<u32>(arg_0.x, global0.x, 17152u, 29354u), vec4<bool>(true, true, true, true)) << (countOneBits(vec4<u32>(var_1.x, 88480u, 1u, var_0.b.x) << (vec4<u32>(4294967295u, 1u, var_1.x, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(!all(vec3<bool>(false, false, true)), select(all(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true)), true), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), var_2.b.x >= var_1.x), vec4<bool>(any(vec3<bool>(false, false, false)), true, all(vec3<bool>(true, false, false)), true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<u32>(0u, arg_0.x, var_0.b.x, 4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global1 = vec2<i32>(~firstTrailingBit(-2147483647i), reverseBits(13344i));
    let var_0 = arg_0.c.x;
    global0 = ~_wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, arg_1.c.x) << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(22254u, 5364u), vec2<u32>(var_0, 77032u)), 4294967295u) % vec2<u32>(32u)), countOneBits(vec2<u32>(~arg_0.c.x, func_2(vec3<u32>(32412u, 80593u, 81639u)).c.x)));
    return vec4<bool>(any(!vec4<bool>(arg_1.b.x, arg_0.a.x, true, false)) || all(!(!vec2<bool>(arg_1.a.x, arg_1.a.x))), !all(vec3<bool>(true, func_2(arg_0.c.wxw).a.x, true)), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - 195f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(795f)))), _wgslsmith_f_op_f32(min(546f, _wgslsmith_f_op_f32(min(975f, -279f))))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_1(!vec3<bool>(arg_3.a.b.x, arg_3.b.a.x, any(!vec4<bool>(true, arg_3.a.b.x, arg_3.a.a.x, arg_3.b.a.x))), func_5(arg_3.b, func_2(select(vec3<u32>(global0.x, 4294967295u, global0.x), arg_3.b.c.zxx, arg_3.b.a.x))), abs(countOneBits(abs(min(arg_3.a.c, vec4<u32>(1457u, arg_3.a.c.x, global0.x, 1u))))));
    var var_1 = var_0.c.x;
    let var_2 = arg_3.a.c.zx;
    var var_3 = func_2(vec3<u32>(0u, _wgslsmith_add_u32(_wgslsmith_add_u32(arg_3.b.c.x, global0.x), reverseBits(global0.x)), _wgslsmith_add_u32(1u, arg_3.a.c.x)));
    var_3 = func_2(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~(vec3<u32>(arg_3.b.c.x, 75221u, var_0.c.x) << (vec3<u32>(arg_3.a.c.x, 4294967295u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1812u, var_3.c.x), arg_3.a.c.xxx << (var_3.c.wwy % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_mod_u32(min(var_0.c.x, var_0.c.x), 1793u), 1u, 112940u)));
    return ~reverseBits(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec2_u32(reverseBits(~(~vec2<u32>(global0.x, 664u))), vec2<u32>(_wgslsmith_mod_u32(countOneBits(7794u), ~(global0.x | global0.x)), _wgslsmith_sub_u32(31767u, (global0.x >> (global0.x % 32u)) ^ global0.x)));
    global0 = ~max(vec2<u32>(func_1(-global1.x, vec4<f32>(-1026f, -2208f, -1965f, -1103f), firstTrailingBit(37811i), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, true, true), vec4<u32>(global0.x, global0.x, global0.x, global0.x)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), vec4<u32>(global0.x, 1u, global0.x, global0.x)))), 86386u), abs(vec2<u32>(func_3(2071f, u_input.a, vec3<bool>(false, false, true)).x, ~global0.x)));
    var var_0 = global0.x;
    var_0 = global0.x;
    var_0 = _wgslsmith_div_u32(~abs(global0.x) >> (~_wgslsmith_add_u32(abs(0u), ~global0.x) % 32u), func_4(1718f, Struct_3(max(~global1.x, u_input.a), vec4<u32>(func_2(vec3<u32>(4294967295u, 1u, 0u)).c.x, select(0u, global0.x, true), 0u, 0u)), vec2<u32>(global0.x, global0.x)).x);
    var var_1 = u_input.a | abs(countOneBits(global1.x));
    var_1 = global1.x;
    var var_2 = func_2(_wgslsmith_div_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 3462u, global0.x), vec3<u32>(global0.x, global0.x, 1u)) >> (min(vec3<u32>(global0.x, global0.x, 28819u), vec3<u32>(71696u, 1u, 1u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~vec3<u32>(24625u, 1u, 19610u), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 53928u, global0.x), vec3<u32>(648u, 1u, global0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(1705f, u_input.a, vec3<bool>(true, true, true)).x, reverseBits(max(~global1.x, u_input.a)), 1325f);
}

