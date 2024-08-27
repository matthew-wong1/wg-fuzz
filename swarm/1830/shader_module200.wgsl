struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, -287f, -1189f);

var<private> global1: array<Struct_1, 16>;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = arg_2.d.c.x;
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(6519u, _wgslsmith_dot_vec2_u32(arg_2.d.a.wz, ~arg_2.b)), _wgslsmith_mod_u32(41947u, _wgslsmith_mult_u32(arg_2.b.x, abs(u_input.a.x))), _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(0u, arg_2.a, 58778u) ^ _wgslsmith_add_u32(0u, 0u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, arg_2.a, 0u) >> (4294967295u % 32u), abs(arg_2.a))), min(_wgslsmith_mod_vec4_u32(~arg_2.d.a, arg_2.d.a), abs(max(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, arg_2.a), vec4<u32>(arg_2.b.x, 1u, arg_2.d.a.x, 53066u)), vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x) ^ vec4<u32>(arg_2.b.x, arg_2.a, 4294967295u, u_input.a.x)))));
    var var_2 = arg_2.d;
    var_1 = vec4<u32>(var_2.a.x, _wgslsmith_dot_vec3_u32(arg_2.d.a.wzz, select(~vec3<u32>(1u, 17370u, 51920u), abs(select(vec3<u32>(var_1.x, var_2.a.x, 4294967295u), vec3<u32>(var_2.a.x, 7412u, 4294967295u), vec3<bool>(arg_1.x, true, var_2.c.x))), select(vec3<bool>(arg_1.x, var_2.c.x, true), select(vec3<bool>(arg_2.d.c.x, true, false), arg_1, arg_1), arg_1.x))), ~(~(~var_1.x)), 0u);
    global1 = array<Struct_1, 16>();
    return _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_2.d.a.x, ~1u | (var_2.a.x | 71991u)), arg_2.a, 0u, _wgslsmith_add_u32(44439u, u_input.a.x)), reverseBits(vec4<u32>(abs(4294967295u), u_input.a.x, abs(1u), u_input.a.x)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    return Struct_2(u_input.a.x, u_input.a, -1i, Struct_1(func_3(arg_0.x, vec3<bool>(true, true, true), Struct_2(u_input.a.x, ~u_input.a, _wgslsmith_sub_i32(-1i, 30978i), Struct_1(vec4<u32>(10464u, u_input.a.x, u_input.a.x, 46005u), global0.zy, vec2<bool>(true, true))), _wgslsmith_add_vec2_i32(-arg_0.yx, vec2<i32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(step(global0.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.yx, global0.yy))))), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true)));
}

fn func_1() -> Struct_2 {
    var var_0 = 4294967295u;
    var var_1 = func_2(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 1i, 60245i), abs(~vec3<i32>(59680i, 1i, -2777i)) ^ -select(vec3<i32>(-27601i, 2147483647i, -1i), vec3<i32>(-2147483647i, -1i, 2147483647i), true)));
    let var_2 = _wgslsmith_sub_u32(countOneBits(_wgslsmith_mult_u32(countOneBits(1u), ~var_1.d.a.x ^ u_input.a.x)), min(1u, 4294967295u));
    global1 = array<Struct_1, 16>();
    let var_3 = ~(-(~vec4<i32>(var_1.c, var_1.c, 2147483647i, var_1.c) << ((countOneBits(var_1.d.a) << (var_1.d.a % vec4<u32>(32u))) % vec4<u32>(32u))));
    return Struct_2(_wgslsmith_div_u32(firstLeadingBit(50402u), _wgslsmith_clamp_u32(u_input.a.x, 0u, _wgslsmith_mult_u32(select(4294967295u, 9941u, true), var_2))), var_1.d.a.xz, var_3.x, Struct_1(~_wgslsmith_sub_vec4_u32(max(var_1.d.a, var_1.d.a), var_1.d.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.d.b.x)), _wgslsmith_f_op_f32(-424f * global0.x)), vec2<bool>(!var_1.d.c.x, true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(0u, min(func_1().b, func_1().b), ~arg_0.c, func_2(reverseBits(firstLeadingBit(vec3<i32>(2147483647i, -15239i, arg_3.c))) ^ select(reverseBits(vec3<i32>(arg_3.c, 0i, 2147483647i)), vec3<i32>(31097i, -25316i, -2147483647i) >> (vec3<u32>(arg_2.a.x, arg_0.b.x, arg_3.d.a.x) % vec3<u32>(32u)), false)).d);
    global0 = vec3<f32>(arg_3.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(func_2(vec3<i32>(1i, -2147483647i, arg_1.c)).d.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b.x))))) - arg_0.d.b.x), _wgslsmith_f_op_f32(abs(889f)));
    let var_1 = ~func_2(abs(~vec3<i32>(arg_0.c, -21971i, -13649i))).c;
    global2 = firstTrailingBit(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(max(-2147483647i, arg_1.c), ~(-2147483647i)), _wgslsmith_sub_i32(~27534i, -2286i)));
    var var_2 = ~(-9612i >> (1u % 32u)) & var_0.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 16>();
    var var_0 = false;
    var var_1 = func_4(func_1(), Struct_2(~firstLeadingBit(abs(u_input.a.x)), vec2<u32>(0u, 1u), -_wgslsmith_mult_i32(1i, 1i), global1[_wgslsmith_index_u32(0u, 16u)]), global1[_wgslsmith_index_u32(50799u, 16u)], func_1());
    let var_2 = var_1.d.b;
    let var_3 = ~(-vec2<i32>(var_1.c, func_2(vec3<i32>(var_1.c, -2147483647i, var_1.c)).c));
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(37922u, u_input.a.x, vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(var_1.d.a, vec4<u32>(18426u, 53105u, 0u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 29344u, 58415u, 56788u) % vec4<u32>(32u)), var_1.d.a >> (vec4<u32>(1u, 4294967295u, u_input.a.x, 100710u) % vec4<u32>(32u)))), var_1.a, ~countOneBits(var_1.b.x)), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.c, var_3.x, 8218i) >> (reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, var_1.b.x)) % vec3<u32>(32u)), vec3<i32>(var_3.x ^ 1i, ~2147483647i, 2147483647i))), var_3.x);
}

