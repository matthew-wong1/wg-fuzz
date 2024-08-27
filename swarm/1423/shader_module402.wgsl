struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 28>;

var<private> global2: bool;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = array<i32, 28>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f + -663f) - arg_1.b.x));
    let var_1 = Struct_3(u_input.e.x, !vec4<bool>(!global0.x, !any(vec3<bool>(false, false, global0.x)), global0.x, true), select(!select(!vec4<bool>(global0.x, false, global0.x, false), select(vec4<bool>(false, false, global0.x, false), vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, true, false, global0.x)), !vec4<bool>(false, global0.x, global0.x, true)), vec4<bool>(any(global0.yx), global0.x, all(vec3<bool>(global0.x, global0.x, global0.x)) | false, select(true, !global0.x, global0.x)), select(select(true, all(global0.yx), true), any(!vec4<bool>(global0.x, global0.x, global0.x, false)), !(!global0.x))), Struct_1(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(arg_0.a.x, -5013i, u_input.b.x, -23252i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(round(-1238f)), _wgslsmith_f_op_f32(370f + arg_0.b.x), -384f) * vec4<f32>(-310f, arg_1.b.x, -1477f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(982f, arg_1.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.x, var_0.x)))), vec2<i32>(~arg_1.a.x, ~44901i)));
    var var_2 = any(select(vec3<bool>(global0.x, true, true), select(vec3<bool>(var_1.b.x, true, true), vec3<bool>(var_1.b.x, select(var_1.c.x, false, global0.x), true), var_1.c.www), vec3<bool>(true, !(var_1.b.x | global0.x), false)));
    var_2 = false;
    return ~_wgslsmith_dot_vec2_u32(~(~u_input.d.xz), u_input.d.zz) ^ ~u_input.d.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> vec4<bool> {
    let var_0 = Struct_2(u_input.d.x, vec4<u32>(~4294967295u, func_3(Struct_1(vec4<i32>(1i, 77i, -1i, u_input.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_1, arg_1) - vec4<f32>(arg_0.x, 1000f, arg_1, -1097f)), arg_1, vec2<i32>(-1i, 1i) ^ u_input.c.wy), Struct_1(vec4<i32>(51324i, u_input.c.x, u_input.b.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-208f, 1017f, arg_1, -1121f) + vec4<f32>(516f, arg_1, -340f, -405f)), arg_0.x, vec2<i32>(-22916i, 2147483647i))), select(abs(~18355u), firstLeadingBit(_wgslsmith_mult_u32(12524u, 90570u)), any(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, true, true, true), global0.x))), func_3(Struct_1(~vec4<i32>(-18215i, 36678i, u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(229f, arg_0.x, -1426f, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + 400f), firstLeadingBit(u_input.c.xz)), Struct_1(-vec4<i32>(-14911i, 0i, u_input.c.x, 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1103f, arg_0.x, arg_1, arg_1) * vec4<f32>(457f, 448f, -595f, arg_0.x)), _wgslsmith_f_op_f32(-300f + arg_1), select(vec2<i32>(54315i, global1[_wgslsmith_index_u32(u_input.d.x, 28u)]), u_input.c.wy, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(710f * 309f) - arg_0.x)) > -1304f);
    let var_1 = ~2147483647i;
    var var_2 = var_0;
    global2 = var_0.c;
    var var_3 = select(!(!(!(!vec4<bool>(var_2.c, var_2.c, true, var_0.c)))), !(!select(!vec4<bool>(false, true, true, var_2.c), select(vec4<bool>(var_0.c, true, global0.x, global0.x), vec4<bool>(true, global0.x, true, var_2.c), false), global0.x)), !(all(!vec4<bool>(false, false, false, var_0.c)) | true));
    return !select(!(!select(vec4<bool>(var_3.x, var_3.x, global0.x, true), vec4<bool>(var_2.c, var_0.c, true, true), false)), !select(!vec4<bool>(true, var_2.c, var_0.c, false), select(vec4<bool>(var_3.x, false, var_3.x, true), vec4<bool>(false, var_0.c, true, false), var_3.x), select(vec4<bool>(false, true, var_2.c, true), vec4<bool>(var_0.c, var_2.c, var_3.x, var_0.c), false)), vec4<bool>(true, all(var_3.zw), any(!vec3<bool>(false, var_2.c, var_2.c)), var_2.c));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = true;
    let var_1 = global0.zx;
    var_0 = !arg_1.c && true;
    global0 = vec3<bool>(all(select(select(select(vec4<bool>(true, global0.x, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, arg_1.c), var_1.x), func_2(vec3<f32>(-1000f, -1238f, 799f), 2055f), !vec4<bool>(true, false, true, arg_0.c)), vec4<bool>(true, arg_0.c & true, true, true), true)), true, -26754i > _wgslsmith_mult_i32(1i ^ _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_1.b.x, 28u)], -34169i), _wgslsmith_dot_vec3_i32(u_input.b.zww, u_input.b.wzy)));
    global1 = array<i32, 28>();
    return Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(arg_0.b.xxy), vec3<u32>(18575u, arg_2.x, 1u)), _wgslsmith_add_vec3_u32(u_input.e, arg_0.b.yww | u_input.e)) << (arg_1.a % 32u), vec4<bool>(all(!(!vec3<bool>(global0.x, arg_1.c, arg_1.c))), false, false, true), func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-740f, 609f, -1709f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-330f, 1717f, -1837f)))))), _wgslsmith_f_op_f32(-1100f * 188f)), Struct_1(vec4<i32>(-1i, 31326i, 1i, 11171i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, -1299f, 1000f, 1613f))), -1338f, u_input.b.zy));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> bool {
    let var_0 = func_1(Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.a, 1u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, u_input.d.x, arg_0.a), vec3<u32>(1u, 48210u, u_input.a))), countOneBits(u_input.d) << ((u_input.d >> (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, arg_0.a, u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, 0u, 45768u, arg_0.a), vec4<u32>(0u, 1u, arg_0.a, u_input.e.x))), !(~arg_0.a < u_input.a)), Struct_2(~_wgslsmith_add_u32(min(1u, 96551u), func_1(Struct_2(u_input.a, vec4<u32>(0u, 28596u, 26035u, 21245u), arg_0.b.x), Struct_2(47505u, vec4<u32>(arg_0.a, 0u, 1u, 4294967295u), arg_0.b.x), vec3<u32>(39540u, arg_0.a, 1u), arg_1.yy).a), ~(~vec4<u32>(4294967295u, 3220u, 1u, u_input.a)), func_2(arg_0.d.b.yzy, _wgslsmith_f_op_f32(-arg_2)).x), u_input.d, -u_input.c.xz).d;
    let var_1 = ~(max(u_input.e.x ^ arg_0.a, u_input.e.x) | _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, arg_0.a, u_input.e.x, u_input.a), ~vec4<u32>(28968u, u_input.a, 1u, arg_0.a))) << (reverseBits(_wgslsmith_div_u32(u_input.d.x, ~4210u)) % 32u);
    var var_2 = select(vec4<i32>(~_wgslsmith_sub_i32(-9436i >> (0u % 32u), 0i), -16663i, _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(arg_1.x, arg_1.x, arg_0.d.d.x, 2147483647i)), vec4<i32>(func_1(Struct_2(u_input.e.x, vec4<u32>(var_1, 0u, arg_0.a, arg_0.a), arg_0.c.x), Struct_2(arg_0.a, vec4<u32>(42491u, 1u, 1u, u_input.a), false), vec3<u32>(6073u, arg_0.a, u_input.a), vec2<i32>(arg_0.d.d.x, 18448i)).d.d.x, -u_input.c.x, u_input.b.x | 1i, func_1(Struct_2(0u, vec4<u32>(0u, 23372u, arg_0.a, 0u), true), Struct_2(arg_0.a, vec4<u32>(u_input.e.x, 9702u, var_1, arg_0.a), global0.x), vec3<u32>(u_input.d.x, 61993u, u_input.a), vec2<i32>(-11348i, 5102i)).d.d.x)), -1i), vec4<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, arg_0.a, 0u, 45942u), max(vec4<u32>(u_input.d.x, 0u, 39022u, arg_0.a), vec4<u32>(1u, var_1, 1u, var_1))), 28u)], ~(min(2147483647i, -5046i) << (_wgslsmith_clamp_u32(0u, 18869u, arg_0.a) % 32u)), ~(-_wgslsmith_clamp_i32(arg_1.x, 3306i, global1[_wgslsmith_index_u32(72024u, 28u)])), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1.x, arg_0.d.d.x, -1i, arg_1.x), max(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, var_0.a.x, arg_0.d.a.x), arg_0.d.a), vec4<i32>(-2147483647i, 1i, 1i, 79369i)))), arg_0.c);
    var var_3 = Struct_2(4294967295u, select(~firstTrailingBit(~vec4<u32>(0u, 57705u, 0u, 4294967295u)), firstLeadingBit(vec4<u32>(u_input.e.x & u_input.d.x, 62913u, firstLeadingBit(34786u), 1u)), vec4<bool>(!(arg_1.x > arg_1.x), !all(vec4<bool>(true, true, global0.x, arg_0.b.x)), select(func_1(Struct_2(34104u, vec4<u32>(35009u, arg_0.a, 4294967295u, arg_0.a), global0.x), Struct_2(var_1, vec4<u32>(arg_0.a, arg_0.a, 29096u, arg_0.a), false), vec3<u32>(arg_0.a, 0u, 4294967295u), vec2<i32>(2147483647i, 2147483647i)).b.x, true, true), true)), any(!vec2<bool>(false, !global0.x)));
    global2 = global0.x;
    return arg_0.b.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1179f, _wgslsmith_div_f32(-327f, -198f), -222f, _wgslsmith_div_f32(-501f, 192f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-416f, 373f, 1158f, -1000f) - vec4<f32>(-1000f, -1278f, 1368f, 144f)))))));
    var var_1 = !(!global0.x);
    var var_2 = Struct_3(2321u, func_1(Struct_2(_wgslsmith_mod_u32(1u, 1u), max(vec4<u32>(96378u, u_input.e.x, u_input.d.x, 4294967295u), vec4<u32>(u_input.a, u_input.a, 22864u, u_input.d.x)) >> (~vec4<u32>(88794u, u_input.d.x, u_input.d.x, 4294967295u) % vec4<u32>(32u)), false), Struct_2(_wgslsmith_div_u32(u_input.a & 3057u, u_input.e.x), _wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, 0u, u_input.a, 6316u)), ~vec4<u32>(u_input.e.x, u_input.d.x, u_input.e.x, 93806u)), any(select(vec4<bool>(true, true, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(global0.x, arg_0.x, global0.x, global0.x)))), u_input.e, vec2<i32>(-2147483647i, select(-1i, countOneBits(arg_3), false))).b, arg_0, Struct_1(abs(u_input.b), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-425f, -1046f)))), -firstTrailingBit(~arg_2)));
    var_1 = global0.x;
    var var_3 = !vec2<bool>((~1u >= var_2.a) | !(!arg_0.x), (~u_input.a << (~var_2.a % 32u)) > abs(u_input.e.x));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(!(!select(vec4<bool>(false, global0.x, true, false), vec4<bool>(global0.x, global0.x, global0.x, true), false)), vec4<bool>(func_4(func_1(Struct_2(u_input.d.x, vec4<u32>(1u, 1u, 1u, 0u), true), Struct_2(0u, vec4<u32>(u_input.a, u_input.a, u_input.e.x, u_input.d.x), true), vec3<u32>(u_input.a, u_input.e.x, u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], 26326i)), vec3<i32>(19526i, u_input.c.x, u_input.c.x) & vec3<i32>(-5591i, u_input.c.x, 1i), _wgslsmith_f_op_f32(abs(1314f))), !global0.x, global0.x, any(global0.xy)), func_1(Struct_2(~u_input.e.x, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 1u, 99434u), vec4<u32>(u_input.a, u_input.e.x, 4294967295u, 1u)), any(vec3<bool>(global0.x, false, global0.x))), Struct_2(13774u & u_input.e.x, vec4<u32>(1u, u_input.a, 4294967295u, u_input.d.x), !global0.x), vec3<u32>(u_input.d.x, countOneBits(1u), _wgslsmith_sub_u32(15861u, u_input.e.x)), select(~vec2<i32>(u_input.c.x, 20141i), vec2<i32>(14830i, 1i), true)).c), max(~(-17992i), u_input.c.x), vec2<i32>(2147483647i, 0i), global1[_wgslsmith_index_u32(func_1(Struct_2(35837u, abs(vec4<u32>(11458u, 4294967295u, 5971u, u_input.d.x)), global0.x), Struct_2(1u | ~u_input.a, ~(~vec4<u32>(4294967295u, 25242u, u_input.a, 64237u)), func_4(Struct_3(u_input.a, vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x), Struct_1(vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(30358u, 28u)], 0i, u_input.c.x), vec4<f32>(926f, 1722f, -1013f, -1104f), 583f, vec2<i32>(u_input.b.x, -627i))), u_input.c.xyw, 935f) & global0.x), ~u_input.d, -(~vec2<i32>(u_input.b.x, 0i))).a, 28u)]);
    var var_1 = ~min(_wgslsmith_clamp_vec2_u32(u_input.e.yy, vec2<u32>(5850u, max(6331u, 76149u)), _wgslsmith_add_vec2_u32(u_input.d.yz ^ vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.d.x, u_input.a))), abs(abs(~u_input.d.xx)));
    let var_2 = func_5(select(func_2(_wgslsmith_f_op_vec3_f32(round(var_0.b.xwx)), _wgslsmith_f_op_f32(-var_0.b.x)), func_2(var_0.b.zzx, _wgslsmith_f_op_f32(round(var_0.b.x))), any(!(!global0.zx))), _wgslsmith_add_i32(u_input.b.x, var_0.a.x) & var_0.d.x, func_5(!func_2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.b.x, -343f), var_0.b.xwy), _wgslsmith_f_op_f32(sign(var_0.c))), abs(var_0.d.x), _wgslsmith_add_vec2_i32(u_input.b.yw, reverseBits(vec2<i32>(-1i, u_input.b.x) << (u_input.d.xx % vec2<u32>(32u)))), ~global1[_wgslsmith_index_u32(u_input.d.x, 28u)]).a.yw, _wgslsmith_dot_vec3_i32(u_input.c.xyx, var_0.a.yzz));
    let var_3 = func_1(Struct_2(~(u_input.e.x << (4294967295u % 32u)), ~min(~vec4<u32>(108925u, var_1.x, 12556u, 4294967295u), select(vec4<u32>(var_1.x, u_input.d.x, 3940u, 29310u), vec4<u32>(0u, 1u, u_input.a, var_1.x), vec4<bool>(global0.x, true, true, false))), all(vec4<bool>(!global0.x, var_0.a.x < 2147483647i, all(vec2<bool>(global0.x, global0.x)), func_4(Struct_3(u_input.a, vec4<bool>(global0.x, false, true, true), vec4<bool>(false, true, false, true), var_2), var_2.a.xyx, -577f)))), Struct_2(abs(select(23684u, _wgslsmith_mod_u32(var_1.x, 4294967295u), false | global0.x)), _wgslsmith_sub_vec4_u32(countOneBits(reverseBits(vec4<u32>(13768u, 1042u, 4294967295u, 0u))), vec4<u32>(~u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 0u), u_input.e.xy), reverseBits(var_1.x), var_1.x)), (_wgslsmith_f_op_f32(var_2.b.x + -2037f) > _wgslsmith_f_op_f32(-var_0.c)) && any(select(vec3<bool>(global0.x, false, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false)))), vec3<u32>(_wgslsmith_mod_u32(var_1.x, u_input.e.x), 8836u, u_input.a), u_input.c.yy);
    let var_4 = var_2.b.xzw;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, vec3<f32>(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(480f - -501f), func_5(var_3.b, -41704i, var_0.d, u_input.b.x).b.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1521f, var_2.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.d.c))))), func_1(Struct_2(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.d, u_input.e)), countOneBits(~vec4<u32>(var_3.a, 4294967295u, 91761u, 19809u)), true), Struct_2(~(~1u), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 30661u, var_3.a), vec4<u32>(0u, var_1.x, 0u, 23790u)), countOneBits(vec4<u32>(var_3.a, 28028u, 0u, 1u))), 2255f < var_2.c), ~_wgslsmith_div_vec3_u32(~u_input.d, vec3<u32>(var_3.a, 1u, 11648u)), func_1(Struct_2(u_input.d.x, vec4<u32>(u_input.a, var_3.a, var_3.a, 26077u), var_3.b.x), Struct_2(var_1.x, vec4<u32>(var_3.a, var_3.a, 17694u, 1u), var_3.c.x), countOneBits(vec3<u32>(88091u, u_input.d.x, u_input.d.x)), func_5(vec4<bool>(false, var_3.b.x, var_3.b.x, false), var_2.d.x, vec2<i32>(2147483647i, 2147483647i), var_3.d.d.x).d).d.a.yy | -u_input.c.wx).d.a.zw);
}

