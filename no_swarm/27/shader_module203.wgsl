struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(9898i, Struct_2(vec3<bool>(true, true, false), true, vec4<u32>(45406u, 1u, 4294967295u, 4294967295u)), vec4<u32>(0u, 1u, 4294967295u, 61047u)), Struct_3(2147483647i, Struct_2(vec3<bool>(false, false, false), true, vec4<u32>(0u, 1u, 4294967295u, 27262u)), vec4<u32>(1u, 7917u, 1385u, 4294967295u)), Struct_3(i32(-2147483648), Struct_2(vec3<bool>(false, true, false), false, vec4<u32>(2222u, 38066u, 0u, 4294967295u)), vec4<u32>(0u, 42486u, 1u, 14089u)), Struct_3(1i, Struct_2(vec3<bool>(true, true, false), true, vec4<u32>(1u, 26201u, 4294967295u, 15132u)), vec4<u32>(28884u, 1u, 29269u, 4294967295u)), Struct_3(-1i, Struct_2(vec3<bool>(false, false, true), false, vec4<u32>(0u, 1u, 1u, 1u)), vec4<u32>(1u, 65499u, 33077u, 50586u)), Struct_3(i32(-2147483648), Struct_2(vec3<bool>(true, true, true), false, vec4<u32>(41444u, 1u, 0u, 4294967295u)), vec4<u32>(7106u, 4294967295u, 17725u, 27330u)), Struct_3(-44277i, Struct_2(vec3<bool>(false, false, false), false, vec4<u32>(0u, 41607u, 55503u, 1u)), vec4<u32>(22804u, 4294967295u, 1u, 0u)), Struct_3(2147483647i, Struct_2(vec3<bool>(false, false, false), true, vec4<u32>(26220u, 126390u, 1u, 99704u)), vec4<u32>(63268u, 19784u, 6788u, 1u)), Struct_3(2147483647i, Struct_2(vec3<bool>(true, true, false), true, vec4<u32>(18501u, 1u, 0u, 1u)), vec4<u32>(30134u, 1u, 44040u, 49359u)), Struct_3(-8286i, Struct_2(vec3<bool>(true, true, false), false, vec4<u32>(81243u, 0u, 29340u, 4294967295u)), vec4<u32>(65202u, 70059u, 0u, 0u)), Struct_3(59222i, Struct_2(vec3<bool>(true, true, true), true, vec4<u32>(36002u, 0u, 0u, 0u)), vec4<u32>(14468u, 0u, 33259u, 69340u)), Struct_3(-5721i, Struct_2(vec3<bool>(true, false, false), false, vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), vec4<u32>(46514u, 4294967295u, 1u, 1u)), Struct_3(0i, Struct_2(vec3<bool>(false, true, true), true, vec4<u32>(86241u, 1u, 4294967295u, 32365u)), vec4<u32>(4294967295u, 4294967295u, 687u, 8449u)));

var<private> global2: array<bool, 12>;

var<private> global3: vec2<u32> = vec2<u32>(113140u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1166f))), -480f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(646f + -1000f)))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> i32 {
    global3 = min(~vec2<u32>(select(global0.c.x << (0u % 32u), _wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(global3.x, 72782u, 1u, 73912u)), false && arg_3.x), 4294967295u), vec2<u32>(firstTrailingBit(~1u), global3.x));
    global2 = array<bool, 12>();
    var var_0 = select(vec4<bool>(arg_3.x | !(u_input.a >= global0.a), true, arg_3.x, true), select(vec4<bool>(global0.b.b, false, global0.b.b, select(global2[_wgslsmith_index_u32(1u, 12u)], select(arg_2.x, global2[_wgslsmith_index_u32(4275u, 12u)], false), all(global0.b.a))), select(!select(vec4<bool>(true, false, false, arg_2.x), vec4<bool>(false, true, arg_2.x, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, global2[_wgslsmith_index_u32(global3.x & 15473u, 12u)], false, false), vec4<bool>(false, 64223u < global0.c.x, any(vec4<bool>(arg_3.x, arg_2.x, global2[_wgslsmith_index_u32(10360u, 12u)], arg_2.x)), false)), u_input.c > u_input.c), true);
    global1 = array<Struct_3, 13>();
    var var_1 = -_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.c, u_input.a, u_input.e), vec3<i32>(-39466i, global0.a, u_input.a), vec3<bool>(arg_3.x, global0.b.b, var_0.x)), vec3<i32>(-2147483647i, global0.a, -1i) << (vec3<u32>(u_input.b.x, global0.b.c.x, u_input.d.x) % vec3<u32>(32u))), select(firstLeadingBit(vec3<i32>(-33310i, 2147483647i, 2147483647i)), -vec3<i32>(1i, u_input.a, 12087i), any(vec2<bool>(var_0.x, global0.b.a.x))), ~(~vec3<i32>(u_input.e, -2147483647i, global0.a))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global0.a, 38608i, -26099i) & ~vec3<i32>(24083i, u_input.c, 0i), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, global0.a, u_input.e), vec3<i32>(1i, -50896i, u_input.c)), vec3<i32>(firstTrailingBit(global0.a), 14155i, -1i)));
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.e, 35122i, u_input.c), vec3<i32>(-global0.a, func_3(858f, _wgslsmith_f_op_vec4_f32(round(arg_1)), global0.b.a.yz, select(global0.b.a.yx, vec2<bool>(global2[_wgslsmith_index_u32(1u, 12u)], false), global2[_wgslsmith_index_u32(global0.c.x, 12u)])), global0.a)));
    let var_1 = -(~1i);
    let var_2 = _wgslsmith_mod_i32(func_3(_wgslsmith_f_op_f32(arg_0 * arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -753f, 389f)), !global0.b.a.zy, !select(global0.b.a.yx, global0.b.a.yx, global2[_wgslsmith_index_u32(global0.b.c.x, 12u)])), 1i) >= ~min(abs(-global0.a), max(_wgslsmith_add_i32(28300i, 3021i), var_0.x));
    var var_3 = global0.b;
    var var_4 = Struct_2(!global0.b.a, !(!select(false, true, var_3.a.x)), _wgslsmith_mult_vec4_u32(global0.c, vec4<u32>(0u, _wgslsmith_mod_u32(~global0.c.x, var_3.c.x), ~(u_input.d.x ^ var_3.c.x), _wgslsmith_mod_u32(var_3.c.x & global0.b.c.x, reverseBits(545u)))));
    return var_4.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c, -(_wgslsmith_add_i32(u_input.a, u_input.e) ^ -27719i), ~u_input.e), vec4<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(-2147483647i, -1i, global0.a, global0.a) | vec4<i32>(1i, u_input.e, u_input.e, u_input.e)), vec4<i32>(1i, u_input.e, u_input.a, -16024i) & abs(vec4<i32>(-13995i, -1i, 1i, global0.a))), _wgslsmith_div_i32(1i, global0.a), -34695i, 2147483647i));
    global2 = array<bool, 12>();
    var var_1 = 1u;
    let var_2 = ~max(u_input.d, u_input.b.xx);
    var var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-217f * _wgslsmith_f_op_f32(230f - -863f)), _wgslsmith_f_op_f32(f32(-1f) * -634f))), _wgslsmith_f_op_vec4_f32(func_1()));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1488f, -1000f) * vec2<f32>(-774f, -1170f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(select(var_0.yyx, var_0.xxz, true), vec3<i32>(-39581i, var_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.e), var_0.zyz), -1i << (0u % 32u), abs(0i)))));
}

