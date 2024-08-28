struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(27009u, 96074u, 2903u, 0u, 4294967295u, 87970u, 1u, 29066u, 19856u, 38604u, 60289u, 1u, 17888u, 1u, 72835u, 50273u, 4294967295u, 0u, 113578u, 4294967295u, 42406u, 16739u, 30665u, 4294967295u, 1u, 1u, 0u);

var<private> global1: vec4<i32>;

var<private> global2: array<bool, 16>;

var<private> global3: array<vec2<i32>, 31>;

var<private> global4: i32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> vec4<bool> {
    global4 = ~select(arg_0.x, _wgslsmith_dot_vec4_i32(-u_input.e, vec4<i32>(arg_0.x, u_input.e.x, u_input.d, global1.x) & u_input.e) & -_wgslsmith_add_i32(-2147483647i, arg_0.x), !any(vec3<bool>(global2[_wgslsmith_index_u32(36764u, 16u)], true, true)));
    global1 = firstTrailingBit(select(vec4<i32>(arg_0.x, -global1.x, max(_wgslsmith_mod_i32(arg_0.x, global1.x), max(1i, global1.x)), global1.x), -vec4<i32>(firstLeadingBit(-42875i), _wgslsmith_add_i32(-1i, global1.x), abs(arg_0.x), u_input.b.x), select(!(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 16u)])), select(select(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], true, global2[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 16u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)])), select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74037u, 27u)], 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(66443u, 16u)], false, global2[_wgslsmith_index_u32(u_input.a, 16u)], true), true), vec4<bool>(true, global2[_wgslsmith_index_u32(30410u, 16u)], true, true)), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42628u, 27u)], 16u)], true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 16u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 16u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(16601u, 16u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(45837u, 16u)]))))));
    var var_0 = ~(vec4<u32>(0u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50738u, 27u)], 27u)] % 32u), ~global0[_wgslsmith_index_u32(u_input.c.x, 27u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(49250u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)]), ~8752u) ^ ~(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60366u, 27u)], 27u)], 0u, 5811u, u_input.a) << (u_input.c % vec4<u32>(32u)))) >> (_wgslsmith_mult_vec4_u32(select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 4294967295u, 8487u), _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.a, 26063u, u_input.c.x))), countOneBits(u_input.c), !global2[_wgslsmith_index_u32(u_input.a, 16u)]), ~vec4<u32>(0u >> (0u % 32u), ~u_input.c.x, 1u, u_input.c.x ^ global0[_wgslsmith_index_u32(102391u, 27u)])) % vec4<u32>(32u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1113f, -374f, 534f, -1457f), vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(-1000f, -1017f, 1f, -402f), !(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 16u)], false, global2[_wgslsmith_index_u32(var_0.x, 16u)], global2[_wgslsmith_index_u32(var_0.x, 16u)])))))), Struct_1(select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 16u)], any(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 16u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], false)), any(vec2<bool>(false, false)), true & global2[_wgslsmith_index_u32(var_0.x, 16u)]), !select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(10315u, 16u)], true), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(77866u, 16u)]), global2[_wgslsmith_index_u32(2637u, 16u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 16u)], true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(var_0.x, 16u)], false), vec4<bool>(global2[_wgslsmith_index_u32(62712u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], true, global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(0u, 16u)])), any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(28421u, 16u)], false)))), vec3<bool>(true, any(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)])), true), _wgslsmith_mult_i32(abs(u_input.e.x), (u_input.d >> (64972u % 32u)) ^ (16597i | global1.x)), ~vec2<i32>(-global1.x, u_input.b.x)));
    var_1 = Struct_2(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, -680f, var_1.a.x, var_1.a.x)))))), Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(28574u, 0u), 16u)], true, true), !(!select(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 16u)], true), var_1.b.a.wwy, false)), 2147483647i, arg_0.zz));
    return vec4<bool>(any(select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 16u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58852u, 27u)], 16u)], var_1.b.a.x), vec4<bool>(var_1.b.a.x, false, true, false), global2[_wgslsmith_index_u32(4294967295u, 16u)]), !select(vec4<bool>(var_1.b.b.x, false, global2[_wgslsmith_index_u32(3222u, 16u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 16u)], true, var_1.b.a.x), var_1.b.b.x), false)), any(!vec2<bool>(true, global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(var_0.x, 27u)], 16u)])), !(_wgslsmith_div_f32(-436f, 305f) <= _wgslsmith_f_op_f32(var_1.a.x + -510f)), !(!(!global2[_wgslsmith_index_u32(19123u, 16u)]) && !(var_1.b.b.x == global2[_wgslsmith_index_u32(var_0.x, 16u)])));
}

fn func_2() -> vec4<bool> {
    global4 = global1.x;
    var var_0 = Struct_1(select(!vec4<bool>(false, 1347i > u_input.e.x, global2[_wgslsmith_index_u32(firstTrailingBit(3834u), 16u)], false), func_3(u_input.e), !func_3(~vec4<i32>(u_input.d, 1i, 51095i, 2147483647i))), !(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(20481u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], false)))), 0i, firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.x), vec2<i32>(u_input.e.x, -1i)), _wgslsmith_add_i32(global1.x, -3530i)), _wgslsmith_div_vec2_i32(-global1.wy, ~global3[_wgslsmith_index_u32(1u, 31u)]), ~global1.xy)));
    global2 = array<bool, 16>();
    var var_1 = u_input.c.x;
    var var_2 = Struct_1(var_0.a, vec3<bool>(false, all(var_0.a), true), _wgslsmith_clamp_i32(-(~(-18861i)), u_input.e.x, _wgslsmith_clamp_i32(countOneBits(global1.x), 0i, ~abs(-2147483647i))), min(~(~global1.zz), _wgslsmith_mult_vec2_i32(~(~vec2<i32>(0i, var_0.d.x)), min(vec2<i32>(u_input.e.x, -10569i), global1.ww) | (vec2<i32>(17860i, var_0.d.x) & vec2<i32>(u_input.b.x, 2147483647i)))));
    return select(var_2.a, vec4<bool>(true, false, !(1i != _wgslsmith_clamp_i32(u_input.e.x, global1.x, u_input.e.x)), !all(func_3(u_input.e).yzw)), !(!var_2.a));
}

fn func_1() -> Struct_1 {
    global3 = array<vec2<i32>, 31>();
    global0 = array<u32, 27>();
    global4 = u_input.b.x;
    var var_0 = ~abs(u_input.b.x);
    global4 = u_input.d;
    return Struct_1(select(func_2(), func_3(~u_input.e >> (vec4<u32>(4294967295u, 25139u, 0u, u_input.c.x) % vec4<u32>(32u))), true), select(vec3<bool>(true && any(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(59342u, 16u)])), true, true), select(vec3<bool>(!global2[_wgslsmith_index_u32(4294967295u, 16u)], true, select(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 16u)], global2[_wgslsmith_index_u32(0u, 16u)])), func_3(u_input.e).zww, any(!vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 16u)], global2[_wgslsmith_index_u32(5031u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)]))), func_2().wxx), _wgslsmith_mod_i32(u_input.e.x, ~24317i), u_input.e.yx | (_wgslsmith_mult_vec2_i32(global1.yy, _wgslsmith_add_vec2_i32(u_input.b.xz, global1.yz)) ^ vec2<i32>(max(-1i, u_input.d), countOneBits(u_input.e.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global4 = global1.x << (~57631u % 32u);
    let var_0 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(28940u, global0[_wgslsmith_index_u32(abs(abs(u_input.a)), 27u)], ~(u_input.a << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)] % 32u)), ~(~24619u))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(1u, u_input.a, u_input.a, global0[_wgslsmith_index_u32(1u, 27u)]) ^ vec4<u32>(u_input.a, 15712u, 4294967295u, u_input.c.x)), countOneBits(u_input.c) & u_input.c));
    global0 = array<u32, 27>();
    let var_1 = (firstLeadingBit(vec3<i32>(-3466i, u_input.d, u_input.b.x) & vec3<i32>(1i, -1i, arg_1.d.x)) & global1.xzy) & (vec3<i32>(-1i, -select(-2147483647i, -2147483647i, true), min(arg_1.c, arg_1.c) << (~u_input.c.x % 32u)) >> (~(abs(u_input.c.xwx) | u_input.c.xyw) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(544f, 780f)) - 1512f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-590f - 973f)))));
    return func_1();
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global2 = array<bool, 16>();
    global4 = _wgslsmith_sub_i32(-(arg_2.d.x & 53712i), _wgslsmith_mult_i32(9359i, global1.x));
    global4 = -8345i;
    let var_0 = func_4(arg_2.d.x, Struct_1(vec4<bool>(37684u >= firstTrailingBit(21123u), false, arg_1, !func_4(-11170i, arg_2).a.x), arg_2.b, u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 31u)])).a.x;
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1719f - -458f))), _wgslsmith_f_op_f32(sign(-1304f)), _wgslsmith_f_op_f32(min(-416f, _wgslsmith_f_op_f32(step(1000f, -1456f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(344f, 1715f, global2[_wgslsmith_index_u32(1u, 16u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1112f, -453f))))), Struct_1(select(select(arg_2.a, arg_2.a, arg_2.a), arg_2.a, false), select(select(vec3<bool>(global2[_wgslsmith_index_u32(7078u, 16u)], arg_0, true), arg_2.b, func_4(arg_2.c, Struct_1(vec4<bool>(arg_2.a.x, false, false, global2[_wgslsmith_index_u32(0u, 16u)]), arg_2.a.zyw, -2147483647i, vec2<i32>(arg_2.d.x, global1.x))).a.x), vec3<bool>(true, all(arg_2.a), true), arg_0), (_wgslsmith_clamp_i32(arg_2.d.x, u_input.b.x, u_input.b.x) >> (868u % 32u)) & ~6339i, select(-_wgslsmith_add_vec2_i32(vec2<i32>(-29575i, u_input.e.x), vec2<i32>(global1.x, -1i)), -(vec2<i32>(arg_2.c, u_input.b.x) & u_input.e.ww), func_2().xy)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(180f)), 170f)), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(round(var_1.a.x)))), var_1.a.x))), Struct_1(vec4<bool>(all(arg_2.b.yz), all(!arg_2.a), any(func_2().yzz), func_4(abs(-19169i), Struct_1(vec4<bool>(false, false, false, false), arg_2.b, -2147483647i, var_1.b.d)).a.x), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 16u)], var_0)), -66259i, var_1.b.d));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    global0 = array<u32, 27>();
    let var_0 = abs(_wgslsmith_add_u32(27810u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)])) >> (4294967295u % 32u)) < _wgslsmith_div_u32(~1u, abs(max(u_input.c.x, 4294967295u)));
    var var_1 = arg_1;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec4_i32(~(~_wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(global1.x, global1.x, global1.x, 0i))) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, -2917i, 0i), u_input.e), u_input.e), -(u_input.e >> (vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 0u, 0u, u_input.a) % vec4<u32>(32u)))), ~vec4<i32>(firstTrailingBit(min(34757i, 0i)), abs(u_input.e.x), global1.x, firstTrailingBit(global1.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, 0i, 2147483647i), vec4<i32>(u_input.b.x, 1i, -55912i, global1.x))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1053f, 1235f, 207f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(598f, -408f, -779f, -535f) + vec4<f32>(-106f, -2567f, 405f, 814f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), func_6(u_input.b.xy, func_5(all(!vec2<bool>(global2[_wgslsmith_index_u32(14417u, 16u)], true)), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 27u)], 0u), 16u)], func_4(0i, func_1()))));
    global1 = -vec4<i32>(var_0.b.c, ~u_input.b.x << (_wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.wxz, vec3<u32>(19284u, global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)])), 27u)]) % 32u), _wgslsmith_sub_i32(abs(func_6(global1.wx, Struct_2(var_0.a, var_0.b)).d.x), var_0.b.d.x), _wgslsmith_mod_i32(u_input.d, 1i));
    let var_1 = _wgslsmith_mult_i32(-func_1().d.x, ~_wgslsmith_add_i32(u_input.d, -1136i));
    global3 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yy, vec2<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 4294967295u)), vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.c.x, 27u)])), u_input.c.yx, vec2<bool>(true, -18393i != var_0.b.c)), global0[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(~0u, 9146u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49821u, 27u)], 27u)] % 32u)), ~u_input.c.yy), -u_input.e.wzy << (abs(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(9009u, 27u)], 4294967295u), vec3<u32>(u_input.a, 85258u, 66454u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 4294967295u, 37484u)))) % vec3<u32>(32u)));
}

