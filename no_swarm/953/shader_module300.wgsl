struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
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

var<private> global0: Struct_1;

var<private> global1: array<u32, 11> = array<u32, 11>(52186u, 4294967295u, 63624u, 28294u, 16222u, 1092u, 1u, 4294967295u, 21064u, 1u, 72927u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = 1i;
    return any(select(select(!(!vec4<bool>(true, false, true, global0.b)), vec4<bool>(true, true, u_input.a.x != u_input.e.x, true), !(!vec4<bool>(true, arg_0, true, global0.d.x))), !(!select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, arg_1.b, arg_1.d.x), vec4<bool>(true, false, global0.b, arg_0))), !select(vec4<bool>(true, true, arg_1.d.x, arg_0), select(vec4<bool>(arg_1.d.x, arg_0, true, true), vec4<bool>(global0.d.x, true, false, global0.d.x), vec4<bool>(arg_1.b, global0.d.x, global0.d.x, false)), !vec4<bool>(arg_0, true, arg_1.d.x, global0.d.x))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1312f * global0.a.x)))), 792f, _wgslsmith_f_op_f32(floor(-1160f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x))))), func_3(all(vec2<bool>(true, true)), Struct_1(vec4<f32>(916f, 1957f, 1987f, 332f), !global0.d.x, global0.c | vec4<i32>(-20820i, -5446i, -26157i, 62296i), !global0.d, _wgslsmith_add_vec2_i32(vec2<i32>(global0.c.x, arg_0), u_input.d))) || func_3(global0.d.x | global0.b, Struct_1(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), global0.b, global0.c, vec2<bool>(true, true), -vec2<i32>(global0.c.x, 2147483647i))), -reverseBits(~vec4<i32>(arg_0, global0.c.x, 32049i, -23963i)) & global0.c, select(select(vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(true, false, global0.d.x))), !global0.d.x), select(global0.d, !select(global0.d, global0.d, vec2<bool>(true, global0.d.x)), any(select(vec3<bool>(false, true, true), vec3<bool>(global0.d.x, global0.b, false), vec3<bool>(global0.b, global0.d.x, true)))), select(vec2<bool>(false, global0.b), !vec2<bool>(global0.b, global0.b), vec2<bool>(true, any(vec2<bool>(false, false))))), select(~vec2<i32>(-48564i >> (u_input.a.x % 32u), arg_0), vec2<i32>(global0.c.x, ~u_input.b), vec2<bool>(_wgslsmith_f_op_f32(trunc(-1759f)) <= global0.a.x, true)));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -102f)) - _wgslsmith_f_op_f32(step(950f, _wgslsmith_f_op_f32(-global0.a.x))))));
    global1 = array<u32, 11>();
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    var_1 = _wgslsmith_f_op_f32(-global0.a.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(global0.a)), true && global0.d.x, vec4<i32>(-global0.e.x, 0i, countOneBits(_wgslsmith_add_i32(~global0.e.x, 8317i)), firstLeadingBit(abs(-2147483647i))), select(!(!select(global0.d, global0.d, global0.d.x)), !vec2<bool>(global0.d.x, !global0.d.x), !global0.d), global0.e);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), abs(-global0.e.x), arg_2.e.x);
    let var_2 = func_2(_wgslsmith_dot_vec3_i32(arg_2.c.wyx, vec3<i32>(var_1.x >> (0u % 32u), u_input.c | 1i, -1538i)));
    global1 = array<u32, 11>();
    global0 = Struct_1(global0.a, func_2(var_0.e.x).b && arg_2.d.x, func_2(select(_wgslsmith_div_i32(var_0.e.x, -29442i), -46208i, true)).c, select(func_2(arg_2.c.x).d, select(vec2<bool>(arg_2.b || var_2.b, global0.b), vec2<bool>(28484u >= global1[_wgslsmith_index_u32(u_input.e.x, 11u)], !global0.d.x), any(select(vec4<bool>(true, true, true, var_0.b), vec4<bool>(var_0.b, false, true, true), true))), false), arg_2.e);
    return func_2(1i);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> bool {
    global1 = array<u32, 11>();
    var var_0 = true;
    var var_1 = func_2(_wgslsmith_div_i32(-2147483647i & func_2(0i).c.x, ~arg_0.c.x)).a.x;
    let var_2 = countOneBits(countOneBits(select(~vec3<u32>(2079u, 44074u, global1[_wgslsmith_index_u32(37484u, 11u)]) & vec3<u32>(u_input.e.x, 1u, 60502u), ~abs(u_input.a), !select(vec3<bool>(false, true, true), vec3<bool>(false, global0.b, false), vec3<bool>(true, global0.d.x, global0.b)))));
    var_0 = arg_0.b;
    return any(!select(vec4<bool>(true, false && global0.d.x, var_2.x > 32464u, true), select(select(vec4<bool>(true, true, arg_0.b, arg_0.b), vec4<bool>(true, global0.b, true, arg_0.d.x), vec4<bool>(true, false, global0.d.x, false)), !vec4<bool>(true, global0.b, false, false), select(vec4<bool>(arg_0.d.x, false, false, true), vec4<bool>(false, false, global0.d.x, true), vec4<bool>(true, false, global0.d.x, global0.d.x))), true && global0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(select(vec4<bool>(global0.d.x, global0.b, true, false), vec4<bool>(global0.b, true, global0.b, global0.b), vec4<bool>(global0.b, false, false, global0.b)), vec4<bool>(false, global0.d.x, global0.d.x, true), true), vec4<bool>(false, !all(vec4<bool>(true, global0.b, true, false)), true | global0.b, !(global0.a.x == 1000f)), global0.d.x);
    let var_1 = select(!global0.d, !vec2<bool>(func_4(func_1(u_input.e.x, global0.a.wz, Struct_1(vec4<f32>(-1000f, global0.a.x, global0.a.x, global0.a.x), global0.d.x, global0.c, vec2<bool>(global0.d.x, var_0.x), global0.e)), _wgslsmith_mult_u32(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<i32>(u_input.c, -2147483647i)), !global0.d.x), !(!vec2<bool>(func_2(u_input.d.x).b, false)));
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f + _wgslsmith_f_op_f32(step(-2291f, -1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-346f)))))), 406f), false, ~(-reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 12168i, u_input.d.x, global0.e.x), vec4<i32>(global0.e.x, 25150i, 2147483647i, u_input.d.x)))), !(!vec2<bool>(var_1.x, true)), -(~(-vec2<i32>(u_input.d.x, global0.e.x)) | func_2(countOneBits(global0.e.x)).e));
    let var_2 = func_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(~(u_input.a.zy << (u_input.e % vec2<u32>(32u)))), vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.e), 11u)])), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.yw))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.yw + global0.a.zz), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1622f, global0.a.x), global0.a.wz, false))) - _wgslsmith_f_op_vec2_f32(func_2(global0.e.x).a.wz * vec2<f32>(global0.a.x, global0.a.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, -844f, global0.a.x) - global0.a)))), false, global0.c, vec2<bool>((global0.c.x >> (4294967295u % 32u)) >= _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, global0.c.x), vec2<i32>(0i, u_input.b)), false || (global0.a.x > 230f)), -u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x, var_2.a);
}

