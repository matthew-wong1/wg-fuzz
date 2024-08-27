struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 44780u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> f32 {
    return _wgslsmith_f_op_f32(-global0.b.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> u32 {
    global0 = Struct_1(3531f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b, global0.b))))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f)) + _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(trunc(-294f)))))));
    let var_0 = Struct_2(2147483647i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-393f + -727f), global0.b.x)) * 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(940f, _wgslsmith_f_op_f32(func_3(Struct_2(-2147483647i, Struct_1(arg_1, global0.b, -1502f), vec2<i32>(0i, -13288i), vec3<i32>(1i, -8039i, 10523i)), vec4<i32>(1i, -1i, 0i, u_input.a), global2.x, arg_2.a)), -332f, _wgslsmith_f_op_f32(arg_1 + arg_1)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) * vec4<f32>(197f, -933f, global0.a, 1387f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a, Struct_1(global0.a, global0.b, -1754f), vec2<i32>(-29723i, u_input.a), vec3<i32>(18734i, -59885i, u_input.a)), vec4<i32>(u_input.a, 1i, 2147483647i, u_input.a), ~u_input.b.x, true))))), countOneBits(vec2<i32>(1i, -(~(-29501i)))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(-26510i), _wgslsmith_div_i32(-2147483647i, -21358i), u_input.a), reverseBits(-vec3<i32>(u_input.a, -11430i, u_input.a)))));
    var var_1 = _wgslsmith_clamp_i32(max(~0i, 0i), ~u_input.a | (i32(-1i) * -min(var_0.d.x, -1i)), max(countOneBits(-var_0.a), var_0.a) << (~u_input.b.x % 32u));
    var_1 = 12648i;
    var var_2 = !select(vec2<bool>(!arg_3, true), !vec2<bool>(all(vec2<bool>(arg_2.a, arg_2.a)), arg_2.a), select(select(vec2<bool>(arg_3, false), vec2<bool>(true, true), all(vec2<bool>(true, arg_2.a))), vec2<bool>(1431f < global0.c, -24191i >= var_0.c.x), all(vec2<bool>(true, true))));
    return select(min(arg_0.x, reverseBits(u_input.b.x)), u_input.b.x, !(!(select(false, false, true) || true)));
}

fn func_1(arg_0: i32) -> f32 {
    global2 = select(~firstLeadingBit(vec2<u32>(106946u, global2.x)), ~_wgslsmith_sub_vec2_u32(~u_input.b.yy, u_input.b.yz), !any(vec4<bool>(true, true, true, true))) ^ _wgslsmith_add_vec2_u32(u_input.b.zy, u_input.b.xy);
    let var_0 = u_input.a;
    let var_1 = ~_wgslsmith_add_u32(global2.x, func_2(global1[_wgslsmith_index_u32(~1u | global2.x, 6u)], global0.b.x, Struct_3(true), true));
    global1 = array<vec4<u32>, 6>();
    let var_2 = ~select(select(~0i, 0i, true), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(1i, -66947i)), vec2<i32>(-35670i, arg_0)), select(true, true, true)) <= var_0;
    return -783f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    var var_0 = ~_wgslsmith_clamp_u32(global2.x, ~(~u_input.b.x), ~global2.x);
    var var_1 = max(~_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(1u, 6u)], ~_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], vec4<u32>(96258u, 4294967295u, u_input.b.x, 0u))), ~(~(~vec4<u32>(1u, 44868u, 11788u, 6410u))));
    let var_2 = Struct_3(true);
    global0 = arg_0.b;
    var_1 = select(global1[_wgslsmith_index_u32(4294967295u, 6u)], ~firstTrailingBit(vec4<u32>(global2.x, var_1.x >> (u_input.b.x % 32u), 0u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 47670u, var_1.x)))), arg_2);
    return _wgslsmith_f_op_f32(arg_1.c + arg_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_mult_i32(i32(-1i) * -16829i, -8765i), Struct_1(global0.c, vec4<f32>(538f, global0.a, 509f, -1343f), _wgslsmith_div_f32(746f, global0.a)), -(~vec2<i32>(u_input.a, -52587i)), ~(vec3<i32>(-2147483647i, u_input.a, 19529i) >> (vec3<u32>(global2.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) + _wgslsmith_f_op_f32(exp2(global0.b.x))), global0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(3118i)), -1999f))), vec4<bool>(true, u_input.b.x >= firstTrailingBit(53007u), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false)), true), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-42751i, u_input.a, -2147483647i, 51296i) << (global1[_wgslsmith_index_u32(5834u, 6u)] % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 23456i))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 615f, global0.b.x, global0.c)), _wgslsmith_f_op_vec4_f32(-global0.b)))), _wgslsmith_f_op_f32(round(global0.a)));
    global2 = u_input.b.zz;
    var var_0 = Struct_3(!any(vec4<bool>(true, true, u_input.b.x > u_input.b.x, true)));
    global0 = Struct_1(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-global0.c), 574f, -567f, global0.c), -824f);
    let var_1 = u_input.a;
    var_0 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1988f);
}

