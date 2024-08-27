struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2;

var<private> global2: array<u32, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    global2 = array<u32, 11>();
    global2 = array<u32, 11>();
    let var_0 = ~abs(firstTrailingBit(firstTrailingBit(~0i)));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.a, global1.a.b))))), -141f), arg_0));
    return true;
}

fn func_2() -> Struct_2 {
    global0 = func_3(-2227f);
    var var_0 = !(!(!(select(global1.a.c, true, true) & all(vec2<bool>(global1.a.c, false)))));
    var var_1 = !global1.a.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1269f, _wgslsmith_f_op_f32(f32(-1f) * -710f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-780f)));
    return Struct_2(global1.a, global1.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    global1 = Struct_2(Struct_1(1036f, _wgslsmith_f_op_f32(arg_2.b.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.a))), any(vec4<bool>(u_input.c > u_input.a, any(vec2<bool>(arg_0.a.c, true)), true, true))), ~abs(~global1.b));
    var var_0 = countOneBits(_wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.b.x, -25221i, -1880i, 1i)), max(vec4<i32>(u_input.b.x, global1.b.x, global1.b.x, global1.b.x) << (vec4<u32>(global2[_wgslsmith_index_u32(52516u, 11u)], u_input.d.x, u_input.d.x, 31763u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.b.x, 2147483647i, arg_2.d.b.x, 2147483647i))))) << ((_wgslsmith_sub_u32(u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~2160u, u_input.d.x), 11u)]) | 1u) % 32u);
    global0 = false;
    global0 = !func_3(_wgslsmith_f_op_f32(func_2().a.a + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(max(-1618f, arg_0.a.a))))));
    let var_1 = Struct_4(Struct_1(925f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) - -367f), true), arg_2, ~select(~vec4<u32>(63808u, 19979u, u_input.a, u_input.c), vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(23405u, 11u)], 1u, 4362u), vec4<u32>(47596u, 1u, global2[_wgslsmith_index_u32(u_input.c, 11u)], global2[_wgslsmith_index_u32(1u, 11u)])), 11u)], global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c, 11u)]), 11u)], global2[_wgslsmith_index_u32(1u, 11u)] & global2[_wgslsmith_index_u32(19461u, 11u)], reverseBits(0u)), true), min(u_input.b.x, arg_2.b.b.x), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + global1.a.a), _wgslsmith_f_op_f32(floor(arg_2.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -921f)))), _wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-153f - _wgslsmith_f_op_f32(arg_2.a.a + -466f)))));
    return !arg_1.c;
}

fn func_1() -> Struct_1 {
    global0 = all(!(!select(select(vec2<bool>(global1.a.c, global1.a.c), vec2<bool>(false, false), vec2<bool>(false, global1.a.c)), select(vec2<bool>(global1.a.c, true), vec2<bool>(true, true), vec2<bool>(global1.a.c, global1.a.c)), vec2<bool>(global1.a.c, global1.a.c))));
    global1 = Struct_2(Struct_1(-1357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1687f, global1.a.b))) * global1.a.a), func_4(func_2(), global1.a, Struct_3(Struct_1(-318f, -1362f, false), Struct_2(Struct_1(1238f, -452f, global1.a.c), vec3<i32>(14512i, 1i, u_input.b.x)), max(1i, 0i), Struct_2(global1.a, vec3<i32>(global1.b.x, global1.b.x, -2147483647i))), Struct_2(Struct_1(global1.a.a, -125f, global1.a.c), firstLeadingBit(global1.b)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(22319i, global1.b.x, _wgslsmith_div_i32(1i, ~43578i)), global1.b, global1.b));
    global1 = Struct_2(global1.a, _wgslsmith_clamp_vec3_i32(global1.b, vec3<i32>(_wgslsmith_div_i32(-32820i, global1.b.x), global1.b.x, -14527i) & global1.b, _wgslsmith_sub_vec3_i32(global1.b, global1.b << (u_input.d.yxw % vec3<u32>(32u))) & vec3<i32>(-global1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(22516i, 1i, 71363i), vec3<i32>(2147483647i, global1.b.x, global1.b.x)), -u_input.b.x)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global1.a.b))))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b)) - _wgslsmith_f_op_f32(1789f + -390f)));
    let var_1 = ~u_input.c;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(), ~vec3<i32>(abs(global1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, 2147483647i, global1.b.x, -6955i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, global1.b.x, 0i, -1i), vec4<i32>(-56899i, 2147483647i, global1.b.x, -2147483647i))), ~(~global1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x, _wgslsmith_mod_u32(u_input.a, global2[_wgslsmith_index_u32(1u, 11u)]));
}

