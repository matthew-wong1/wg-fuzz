struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: vec2<i32> = vec2<i32>(-21572i, -13271i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 18>;

var<private> global3: vec2<i32>;

var<private> global4: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1126u, 50235u, 30318u), vec3<u32>(0u, 0u, 70851u), vec3<u32>(0u, 22584u, 26890u), vec3<u32>(32939u, 4294967295u, 0u), vec3<u32>(119163u, 45721u, 1431u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(u_input.b), 0u), 114640u), 18u)];
    global3 = vec2<i32>(0i, global0.x);
    let var_1 = Struct_1(select(select(select(global1.a, vec3<bool>(var_0.a.x, false, true), global1.a), vec3<bool>(any(var_0.a), global1.a.x, true), var_0.a.x), vec3<bool>(true & (global1.c.x == global1.c.x), (var_0.b.x != global1.b.x) & true, true), vec3<bool>(global1.a.x, false, true)), ~(~firstTrailingBit(abs(vec2<u32>(0u, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(_wgslsmith_f_op_f32(step(var_0.c.x, -575f)), _wgslsmith_f_op_f32(f32(-1f) * -1225f))));
    let var_2 = vec4<bool>(any(!select(vec4<bool>(var_0.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(false, true, false, false))) == all(select(!var_1.a.xy, vec2<bool>(false, false), global1.a.x)), true, false, var_1.a.x);
    global2 = array<Struct_1, 18>();
    return var_1.b.x >> (min(1u, 24546u) % 32u);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = 17278i;
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 18u)];
    let var_2 = Struct_1(vec3<bool>(!arg_2.a.x, all(vec3<bool>(global1.a.x, false, global1.a.x)) & true, global1.a.x), vec2<u32>(reverseBits(min(var_1.b.x, arg_3.b.x)) & ~abs(var_1.b.x), func_3() & abs(1u)), arg_3.c);
    var var_3 = vec2<u32>(reverseBits(arg_3.b.x), ~1u);
    var_1 = arg_3;
    return all(vec4<bool>(true, any(vec4<bool>(true, true, all(vec2<bool>(false, true)), !var_1.a.x)), all(select(!vec4<bool>(false, true, true, global1.a.x), !vec4<bool>(global1.a.x, true, true, true), vec4<bool>(false, false, true, true))), arg_2.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    let var_0 = -((vec3<i32>(-39041i, select(global0.x, global0.x, false), select(global0.x, 1i, global1.a.x)) | ~(~vec3<i32>(global0.x, -2147483647i, -6067i))) & select(_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, arg_1, global3.x), vec3<i32>(-40557i, global0.x, global3.x) >> (global4[_wgslsmith_index_u32(0u, 5u)] % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(-47997i, -1i), arg_1, countOneBits(global3.x)), !vec3<bool>(arg_0.a.x, global1.a.x, false)));
    var var_1 = Struct_1(select(arg_0.a, select(vec3<bool>(true, !global1.a.x, any(vec4<bool>(true, false, arg_0.a.x, false))), global1.a, !vec3<bool>(arg_0.a.x, true, true)), !select(!arg_0.a.x, func_2(var_0.yz, 1203f, Struct_1(vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec2<u32>(11572u, u_input.b), arg_0.c), Struct_1(global1.a, vec2<u32>(arg_0.b.x, 1u), arg_0.c)), global1.a.x && false)), arg_0.b, global1.c);
    global1 = arg_0;
    var var_2 = firstLeadingBit(~vec2<u32>(1u, ~1u));
    global1 = Struct_1(!select(vec3<bool>(select(false, true, var_1.a.x), !arg_0.a.x, true), vec3<bool>(all(vec3<bool>(global1.a.x, global1.a.x, true)), true, true), !(!global1.a)), ~(~vec2<u32>(3548u & u_input.b, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -128f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.c, global1.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, global1.c.x))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.c, vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x)))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x - -1447f), -270f), _wgslsmith_f_op_f32(global1.c.x - arg_0.c.x))) + arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<u32>(1u, 1u, 1u)) & (vec3<u32>(u_input.b, 17470u, 59176u) >> (firstTrailingBit(~(~vec3<u32>(global1.b.x, u_input.a, 1u))) % vec3<u32>(32u)));
    var var_1 = -876f;
    let var_2 = Struct_1(global1.a, vec2<u32>(17814u, 1u), _wgslsmith_f_op_vec2_f32(global1.c * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1420f + global1.c.x)))));
    let var_3 = var_2;
    var var_4 = Struct_1(global1.a, vec2<u32>(firstLeadingBit(max(~u_input.b, _wgslsmith_dot_vec3_u32(var_0, global4[_wgslsmith_index_u32(5436u, 5u)]))), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.c, vec2<f32>(var_3.c.x, var_2.c.x)) - _wgslsmith_f_op_vec2_f32(func_1(Struct_1(global1.a, var_3.b, global1.c), select(25747i, 0i, global1.a.x))))));
    let var_5 = select(vec2<bool>(false, true), select(vec2<bool>(!select(false, true, false), true), vec2<bool>(!any(vec4<bool>(var_4.a.x, var_3.a.x, var_2.a.x, var_3.a.x)), global1.a.x), !(global0.x > min(global0.x, -13350i))), !vec2<bool>(all(select(vec3<bool>(false, var_3.a.x, global1.a.x), vec3<bool>(var_2.a.x, var_2.a.x, true), var_3.a)), any(var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-1251f);
}

