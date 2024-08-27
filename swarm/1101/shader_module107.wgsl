struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-29097i, 34703i));

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<i32>(18837i, 1486i)), Struct_1(vec2<i32>(51697i, 5335i)), Struct_1(vec2<i32>(-64206i, -1i)), Struct_1(vec2<i32>(-9765i, -1i)), Struct_1(vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, -69652i)), Struct_1(vec2<i32>(0i, -9984i)), Struct_1(vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(5398i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(2147483647i, -42189i)), Struct_1(vec2<i32>(-25598i, 50509i)), Struct_1(vec2<i32>(-37672i, 24603i)));

var<private> global3: array<vec4<bool>, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    global3 = array<vec4<bool>, 23>();
    global1 = global2[_wgslsmith_index_u32(~global0.d.x, 14u)];
    global1 = global2[_wgslsmith_index_u32(~(~global0.d.x), 14u)];
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    return Struct_2(select(any(vec2<bool>(arg_0.x >= 1u, true && global0.a)), false, global0.a), -202f, _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, global0.c.x), global0.c), vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(4294967295u, global0.d.x)), arg_0.x));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    global0 = arg_1;
    var var_0 = arg_1;
    var var_1 = arg_1.a;
    var var_2 = select(vec3<bool>(false | var_0.a, true, true), !(!select(vec3<bool>(true, true, var_0.a), vec3<bool>(arg_1.a, global0.a, true), !arg_1.a)), global0.d.x < _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0.d, vec2<u32>(1u, 64293u)), 1u));
    let var_3 = vec2<i32>(7471i, 2147483647i);
    return Struct_1(vec2<i32>(firstLeadingBit(global1.a.x), 2147483647i));
}

fn func_1() -> Struct_2 {
    global1 = func_3(global0.d, func_2(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, 18770u), vec3<u32>(4294967295u, 48728u, global0.d.x)), ~vec3<u32>(global0.d.x, global0.d.x, 56033u))), u_input.a));
    global0 = Struct_2(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1105f, 279f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.c.x)), _wgslsmith_f_op_f32(min(-1162f, _wgslsmith_f_op_f32(-308f - -1729f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1892f))), global0.d);
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(global1.a), vec2<i32>(-(~1i), 1i)));
    var var_1 = func_3(~_wgslsmith_sub_vec2_u32(firstTrailingBit(min(vec2<u32>(52768u, 5577u), vec2<u32>(53243u, 0u))), global0.d ^ global0.d), func_2(vec3<u32>(~(~global0.d.x), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.d.x, global0.d.x, global0.d.x), vec4<u32>(global0.d.x, global0.d.x, global0.d.x, 20485u))), _wgslsmith_sub_u32(min(1u, global0.d.x), 55042u ^ global0.d.x)), -(~countOneBits(2147483647i))));
    var var_2 = global2[_wgslsmith_index_u32(~4294967295u, 14u)];
    return func_2(~select(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global0.d.x, global0.d.x), vec3<u32>(24305u, 4294967295u, 1u))), vec3<u32>(_wgslsmith_add_u32(global0.d.x, global0.d.x), global0.d.x, 0u), global0.a), -var_1.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = !vec2<bool>(false, !arg_2.a & !arg_1.a);
    var_0 = select(!vec2<bool>(false, arg_0.a), select(vec2<bool>(true, true), select(!select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_1.a, false), true), vec2<bool>(arg_0.c.x > arg_0.c.x, func_1().a), vec2<bool>(arg_0.a, arg_0.a)), select(!select(vec2<bool>(false, false), vec2<bool>(arg_0.a, false), arg_1.a), select(select(vec2<bool>(true, false), vec2<bool>(global0.a, var_0.x), var_0.x), vec2<bool>(true, true), select(vec2<bool>(global0.a, false), vec2<bool>(true, var_0.x), false)), false)), select(vec2<bool>(true, true), !(!(!vec2<bool>(true, arg_0.a))), false));
    let var_1 = firstTrailingBit(firstLeadingBit(~1u));
    var var_2 = vec4<i32>(0i, 2147483647i, abs(u_input.a), reverseBits(0i));
    var var_3 = vec3<bool>(false, arg_1.a, all(vec3<bool>(global0.a, any(!global3[_wgslsmith_index_u32(arg_3, 23u)]), arg_1.a)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = global2[_wgslsmith_index_u32(~4294967295u, 14u)];
    let var_1 = func_4(Struct_2(!(!(global0.a || false)), _wgslsmith_f_op_f32(max(694f, _wgslsmith_f_op_f32(select(global0.b, 1185f, true | global0.a)))), _wgslsmith_f_op_vec2_f32(-global0.c), global0.d), Struct_2(global0.a, -630f, vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b * 307f)))), vec2<u32>(min(81247u, _wgslsmith_mod_u32(1u, global0.d.x)), 0u)), func_1(), 1u);
    global2 = array<Struct_1, 14>();
    let var_2 = reverseBits(59552i);
    let var_3 = func_2(vec3<u32>(~(~global0.d.x), 9618u, 42870u), -(~reverseBits(var_2))).d.x;
    let var_4 = _wgslsmith_div_f32(var_1.c.x, global0.c.x);
    let var_5 = Struct_2(-1i > _wgslsmith_dot_vec2_i32(select(global1.a, global1.a, true), ~global1.a), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-157f, 1222f), vec2<f32>(global0.b, var_4), vec2<bool>(global0.a, var_1.a)))), var_1.c)), vec2<f32>(-1000f, var_4)), global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1435f, _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(-var_1.c.x))))), ~(~(~(~vec4<u32>(59565u, var_1.d.x, 5979u, var_1.d.x)))));
}

