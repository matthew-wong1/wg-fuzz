struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, false), vec2<bool>(true, true));

var<private> global1: Struct_1;

var<private> global2: array<i32, 22> = array<i32, 22>(i32(-2147483648), -6611i, -1i, 8776i, 91820i, 13580i, -7418i, 7434i, 1i, i32(-2147483648), -26383i, 2147483647i, 0i, 1i, 0i, 1i, -15228i, 35538i, -2542i, 0i, -11120i, 0i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(global0.a, global0.b);
    let var_1 = ~vec4<u32>(1u, 1u, 1u, 1u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a))), countOneBits(-u_input.a), vec3<bool>((_wgslsmith_f_op_f32(floor(-1396f)) < _wgslsmith_f_op_f32(-global1.a)) || global0.a.x, global1.c.x, global2[_wgslsmith_index_u32(var_1.x, 22u)] >= ((30905i ^ u_input.a) | u_input.a)));
    global1 = var_2;
    global0 = Struct_2(select(select(vec3<bool>(false, var_1.x > 74568u, all(vec2<bool>(true, true))), vec3<bool>(any(var_0.a), var_0.a.x, var_2.c.x), true), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(415f))) < _wgslsmith_div_f32(var_2.a, var_2.a)), vec2<bool>(!var_0.a.x || (any(vec3<bool>(var_0.a.x, var_0.b.x, global1.c.x)) & (4294967295u > var_1.x)), global2[_wgslsmith_index_u32(var_1.x, 22u)] >= _wgslsmith_sub_i32(-43043i, abs(global1.b))));
    return 0u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = firstTrailingBit(abs(~(-vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a)) >> (vec4<u32>(0u, _wgslsmith_div_u32(30840u, 4294967295u), func_3(), 4294967295u) % vec4<u32>(32u))));
    let var_1 = ~(~select(firstLeadingBit(var_0.yx), ~var_0.yx, global1.c.x));
    var var_2 = -2147483647i;
    global2 = array<i32, 22>();
    global0 = arg_1;
    return vec4<i32>(reverseBits(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-3950i, -_wgslsmith_dot_vec3_i32(var_0.zwy, vec3<i32>(7450i, -2147483647i, var_1.x)), 1i), vec3<i32>(-firstTrailingBit(-2147483647i), ~var_0.x, _wgslsmith_mult_i32(1i, -arg_0.b.b))), 19232i, 34052i);
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = Struct_2(!select(vec3<bool>(true, !global1.c.x, true), select(global1.c, vec3<bool>(global1.c.x, global1.c.x, true), !global1.c.x), true), global0.b);
    var var_1 = Struct_1(var_0, _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -796i, 994i, u_input.b)), func_2(Struct_3(global1.c.yz, Struct_1(2015f, u_input.a, global0.a)), Struct_2(vec3<bool>(global1.c.x, true, global1.c.x), vec2<bool>(global1.c.x, global0.b.x)))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(78022i, global1.b, global1.b, 28000i) | vec4<i32>(1i, u_input.a, 33338i, global2[_wgslsmith_index_u32(1u, 22u)])), vec4<i32>(~29469i, global1.b, -2147483647i, 75156i))), !vec3<bool>(any(!global1.c), true, true));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), -min(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(-5772i, 446i), 13121i), global1.b), !var_1.c);
    let var_2 = Struct_3(select(!select(!var_1.c.xz, !vec2<bool>(global1.c.x, true), any(global1.c)), vec2<bool>(true, true), !(!global1.c.zy)), Struct_1(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f))), -_wgslsmith_mult_i32(~(-2147483647i), countOneBits(global1.b)), !global1.c));
    return vec2<f32>(-868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 413f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = Struct_2(vec3<bool>(global0.a.x, true, !global0.b.x), vec2<bool>(all(vec3<bool>(false, all(global0.a), any(global0.a.yx))), global0.a.x));
    let var_2 = global1.c.yx;
    global1 = Struct_1(703f, -17953i, select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(1348f + global1.a) == _wgslsmith_f_op_f32(global1.a * var_0.x), all(var_1.a), any(!vec4<bool>(true, true, true, global0.b.x))), select(vec3<bool>(true, true, false && global0.a.x), vec3<bool>(true, true, true), true)));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -778f)), ~global1.b, !global1.c);
    global0 = Struct_2(vec3<bool>(true, any(vec4<bool>(true, true, true, true)) & global1.c.x, all(!(!vec4<bool>(false, true, global1.c.x, true)))), !(!(!(!var_1.a.zz))));
    let x = u_input.a;
    s_output = StorageBuffer(select(((vec4<i32>(1i, global2[_wgslsmith_index_u32(1u, 22u)], -2147483647i, global1.b) ^ vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(35956u, 22u)], 1i)) ^ vec4<i32>(u_input.b, global1.b, -39429i, -65408i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(43124u, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global1.b) | vec4<i32>(-2147483647i, -33237i, -13501i, global2[_wgslsmith_index_u32(71576u, 22u)]), abs(vec4<i32>(global1.b, -21276i, 1i, u_input.a)), -vec4<i32>(global1.b, global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(63368u, 22u)])), min(min(-vec4<i32>(-8155i, 34518i, global1.b, 0i), ~vec4<i32>(-25274i, global1.b, 10621i, 1i)), vec4<i32>(-26231i, global1.b & global1.b, _wgslsmith_mult_i32(global1.b, global1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -2142i), vec3<i32>(-144i, global1.b, -2147483647i)))), !vec4<bool>(false, u_input.a <= u_input.b, all(vec2<bool>(false, true)), select(global0.b.x, var_2.x, global0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3568f, global1.a, global1.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(431f, var_0.x)), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(732f + -1431f)))), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 1i, global1.b), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], u_input.b, global1.b)) | reverseBits(vec3<i32>(global1.b, 388i, u_input.a))) | (vec3<i32>(u_input.a, global1.b, global2[_wgslsmith_index_u32(4294967295u, 22u)] << (7346u % 32u)) ^ func_2(Struct_3(global1.c.xz, Struct_1(global1.a, global2[_wgslsmith_index_u32(34786u, 22u)], global1.c)), var_1).zxx), _wgslsmith_sub_u32(1u, func_3()) ^ 16891u);
}

