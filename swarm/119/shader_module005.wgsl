struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_5 = Struct_5(vec2<i32>(1i, -58221i), Struct_1(-1356f, vec4<f32>(-1000f, 1000f, 1563f, 335f), false), vec2<i32>(1i, i32(-2147483648)));

var<private> global2: array<vec4<i32>, 19>;

var<private> global3: array<u32, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5) -> vec3<f32> {
    global2 = array<vec4<i32>, 19>();
    global3 = array<u32, 19>();
    var var_0 = i32(-1i) * -firstTrailingBit(1i);
    let var_1 = Struct_3(1u);
    global1 = arg_1;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1352f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-197f, global1.b.b.x)))), global1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(819f, 470f)))) * _wgslsmith_f_op_vec3_f32(-global1.b.b.wzz));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec3<i32>) -> i32 {
    global2 = array<vec4<i32>, 19>();
    let var_0 = Struct_3(~43899u);
    var var_1 = global1.b;
    var var_2 = _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(37492u, global3[_wgslsmith_index_u32(63622u, 19u)]), vec2<u32>(arg_0.a, arg_1.a)) >> (55125u % 32u), ~(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 26187u, 108624u, arg_0.a), _wgslsmith_div_vec4_u32(vec4<u32>(42800u, 1u, 4294967295u, 68776u), vec4<u32>(20296u, global3[_wgslsmith_index_u32(81414u, 19u)], arg_0.a, 0u))))), _wgslsmith_sub_vec3_u32(firstLeadingBit(countOneBits(~vec3<u32>(var_0.a, 12053u, 0u))), vec3<u32>(~(~var_0.a), 1u, ~(~48158u))), vec3<u32>(global0.x, _wgslsmith_add_u32(23679u, 49657u), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(var_0.a, 4294967295u)), 19u)], _wgslsmith_dot_vec3_u32(~vec3<u32>(51746u, 7310u, 1u), vec3<u32>(1u, 1u, 1u)))));
    var var_3 = Struct_5(countOneBits(vec2<i32>(global1.c.x, u_input.b << (abs(4294967295u) % 32u))), global1.b, min(_wgslsmith_clamp_vec2_i32(arg_3.xy >> (vec2<u32>(4294967295u, arg_0.a) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.x, 6043i, 52309i), arg_3), ~60828i), vec2<i32>(u_input.a, abs(global1.a.x))), ~max(vec2<i32>(-2147483647i, u_input.b), global1.a) ^ (_wgslsmith_sub_vec2_i32(arg_3.yy, vec2<i32>(arg_3.x, 0i)) | (global1.c & vec2<i32>(global1.c.x, arg_3.x)))));
    return arg_3.x >> (select(~var_0.a, 44201u, !(!var_1.c)) % 32u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_5 {
    let var_0 = vec4<i32>(-_wgslsmith_div_i32(~global1.a.x, func_3(Struct_3(30253u), Struct_3(35094u), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.b.x, global1.b.a) - arg_1.b.xzy), select(vec3<i32>(global1.a.x, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, 0i), global1.b.c))), u_input.b, ~(-37052i), _wgslsmith_div_i32(-93194i, reverseBits(~global1.a.x)));
    global1 = Struct_5(_wgslsmith_mod_vec2_i32(~select(_wgslsmith_sub_vec2_i32(global1.c, global1.a), abs(vec2<i32>(41304i, 2147483647i)), select(vec2<bool>(global1.b.c, false), vec2<bool>(arg_1.c, true), global1.b.c)), var_0.yw), global1.b, _wgslsmith_sub_vec2_i32((global1.a ^ _wgslsmith_add_vec2_i32(var_0.xw, vec2<i32>(-2147483647i, var_0.x))) << (vec2<u32>(select(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 19u)], 19u)], true), global0.x << (95842u % 32u)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(-7067i, u_input.b & u_input.b), global1.a.x)));
    var var_1 = global1.b.b;
    global2 = array<vec4<i32>, 19>();
    global1 = Struct_5(global1.c, Struct_1(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - -604f), 694f)), global1.b.c)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -1569f), 886f, _wgslsmith_f_op_f32(-arg_2.x), -1108f))), 37049i != global1.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(1i), u_input.b), global1.a));
    return Struct_5(-(vec2<i32>(2147483647i, global1.c.x ^ 88276i) & ~min(global1.c, var_0.yz)), arg_1, var_0.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-667f + 1502f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b.x * -888f)), global1.b.a)), global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.a, _wgslsmith_f_op_f32(-global1.b.a), -562f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(global1.b.b.wwy)), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(-861f, global1.b.b, false), Struct_5(vec2<i32>(global1.c.x, 9395i), global1.b, vec2<i32>(global1.a.x, 63685i)))), select(vec3<bool>(global1.b.c, global1.b.c, false), vec3<bool>(true, true, global1.b.c), vec3<bool>(global1.b.c, true, global1.b.c))))) - _wgslsmith_f_op_vec3_f32(-global1.b.b.xwx)));
    let var_0 = ~max(1i, _wgslsmith_dot_vec2_i32(global1.a, _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c.x, global1.a.x), select(global1.a, vec2<i32>(0i, u_input.b), vec2<bool>(true, true)))));
    let var_1 = !(!(!vec4<bool>(global1.b.c, global1.b.c, true, false)));
    var var_2 = Struct_4(vec4<bool>(var_1.x, global1.b.c, !global1.b.c, true || var_1.x), ~(~global0.x));
    var var_3 = Struct_5(-global1.c ^ _wgslsmith_sub_vec2_i32(global1.a, global1.a), Struct_1(1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1621f, global1.b.b.x, 1000f, global1.b.b.x)) - vec4<f32>(global1.b.a, _wgslsmith_f_op_vec3_f32(func_1(global1.b, Struct_5(vec2<i32>(0i, -2147483647i), Struct_1(global1.b.a, global1.b.b, var_1.x), vec2<i32>(u_input.b, global1.a.x)))).x, global1.b.a, global1.b.b.x)), global1.b.c), global1.a);
    let var_4 = vec2<bool>(var_2.a.x, global1.b.c);
    global2 = array<vec4<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_u32(~(vec4<u32>(global0.x, 1u, 4294967295u, global0.x) ^ vec4<u32>(26887u, 15041u, global3[_wgslsmith_index_u32(var_2.b, 19u)], global0.x)), (vec4<u32>(22071u, 4294967295u, global0.x, 31502u) << (vec4<u32>(var_2.b, 15216u, global3[_wgslsmith_index_u32(21994u, 19u)], var_2.b) % vec4<u32>(32u))) | select(vec4<u32>(global0.x, var_2.b, var_2.b, 48827u), vec4<u32>(1u, 1u, 0u, 0u), false))), ~global2[_wgslsmith_index_u32(var_2.b, 19u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.b.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b.b * vec4<f32>(-411f, 198f, global1.b.b.x, 833f)) + var_3.b.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b.b) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a, -1697f, global1.b.a, var_3.b.a)) * vec4<f32>(global1.b.a, -836f, global1.b.b.x, -736f))), select(select(!var_1, !vec4<bool>(var_2.a.x, false, var_3.b.c, true), true), var_1, var_2.a))), u_input.a);
}

