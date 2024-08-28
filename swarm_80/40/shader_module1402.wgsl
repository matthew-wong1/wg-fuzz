struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: bool = true;

var<private> global2: vec2<f32>;

var<private> global3: array<vec2<bool>, 16>;

var<private> global4: array<u32, 31>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global1 = all(select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), global2.x < _wgslsmith_f_op_f32(f32(-1f) * -1477f)), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, global2.x >= global2.x, false, any(global3[_wgslsmith_index_u32(22277u, 16u)]))));
    let var_0 = Struct_2(Struct_1(u_input.b, select(~(~vec2<u32>(50469u, 7941u)), u_input.c.xx & reverseBits(u_input.c.yz), vec2<bool>(true, global2.x < 762f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-275f, 535f)))) * global2.x)), _wgslsmith_div_vec2_i32(~u_input.b, _wgslsmith_mod_vec2_i32(abs(u_input.b) ^ vec2<i32>(u_input.a, -16854i), vec2<i32>(~(-30691i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.b.x), vec3<i32>(u_input.a, 34990i, u_input.b.x))))), -u_input.a, vec2<u32>(u_input.c.x, global4[_wgslsmith_index_u32(~(16989u ^ u_input.c.x), 31u)]), Struct_1(u_input.b, u_input.c.yx, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-global2.x), all(vec2<bool>(true, false))))))));
    global3 = array<vec2<bool>, 16>();
    var var_1 = ~var_0.a.b;
    return reverseBits(~49620u);
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    return abs(firstLeadingBit(vec2<u32>(func_3(), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, firstLeadingBit(0u)), 31u)])));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(select(vec2<i32>(-arg_2.a.x & reverseBits(arg_2.a.x), arg_0), arg_2.a, global3[_wgslsmith_index_u32(~min(_wgslsmith_sub_u32(u_input.c.x, 34009u), _wgslsmith_sub_u32(4294967295u, arg_2.b.x)), 16u)]), _wgslsmith_add_vec2_u32(u_input.c.xz, ~u_input.c.yy << (vec2<u32>(1u, 29665u) % vec2<u32>(32u))) & abs(_wgslsmith_mult_vec2_u32(vec2<u32>(16379u, u_input.c.x), vec2<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.c.x))), arg_2.c);
    let var_1 = Struct_1(arg_2.a, ~_wgslsmith_add_vec2_u32(func_2(Struct_2(Struct_1(arg_2.a, vec2<u32>(0u, arg_2.b.x), 1243f), arg_2.a, arg_0, vec2<u32>(24288u, 0u), Struct_1(arg_2.a, vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 31u)], 68873u), global2.x))), var_0.b), global2.x);
    let var_2 = true;
    let var_3 = Struct_1(var_1.a, vec2<u32>(0u, ~(~var_1.b.x)), _wgslsmith_f_op_f32(arg_2.c + _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.c, var_1.c)))))));
    let var_4 = !all(vec4<bool>(true || (var_3.c < global2.x), !var_2, true && (30272i < var_3.a.x), select(-1i > u_input.a, !var_2, true)));
    return firstTrailingBit(-37690i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.xz;
    global2 = vec2<f32>(global2.x, global2.x);
    let var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(any(global3[_wgslsmith_index_u32(36234u ^ u_input.c.x, 16u)]), false, all(vec2<bool>(true, true))), (1i == func_1(u_input.a, -1000f, Struct_1(vec2<i32>(12039i, u_input.a), var_0, 562f))) | (true & all(vec3<bool>(false, false, false))));
    var var_2 = any(vec4<bool>(var_1.x, firstTrailingBit(u_input.b.x) >= ~_wgslsmith_div_i32(0i, -1i), all(select(var_1, !vec3<bool>(true, true, var_1.x), var_1.x)), all(!select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1.x))));
    var var_3 = !all(vec3<bool>(true, false, false));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1457f, global2.x)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, global2.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(478f, global2.x) + vec2<f32>(-284f, -1696f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(285f, global2.x) * vec2<f32>(1450f, global2.x)))))));
    var_2 = any(!var_1.yz) && false;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(u_input.c.x, 4294967295u, global4[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.c.x) >> ((vec4<u32>(67460u, 17399u, 1u, 4294967295u) << (vec4<u32>(var_0.x, 40726u, 12639u, global4[_wgslsmith_index_u32(u_input.c.x, 31u)]) % vec4<u32>(32u))) % vec4<u32>(32u)))), ~firstLeadingBit(u_input.a));
}

