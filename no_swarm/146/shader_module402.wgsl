struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), -956f, vec2<f32>(854f, 974f));

var<private> global2: vec2<f32>;

var<private> global3: Struct_1;

var<private> global4: array<vec4<i32>, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(1u, arg_1.a.x, _wgslsmith_mult_u32(29920u, 1u)), ~arg_3.a.x, 0u), 222f, arg_1.c);
    return global2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(26236u, 6u)];
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-942f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global2.x)), -1114f)))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 6u)];
    var var_3 = global0[_wgslsmith_index_u32(0u, 6u)];
    let var_4 = Struct_1(var_0.a, -843f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b - -1075f) * global2.x)), _wgslsmith_f_op_f32(-var_1.b)));
    return Struct_1(~(~abs(var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2095f * var_3.c.x)))) * _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(select(270f, _wgslsmith_f_op_f32(224f * var_1.b), true)))), var_4.c);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: bool, arg_3: i32) -> vec3<i32> {
    var var_0 = func_2();
    var var_1 = func_2();
    var_0 = func_2();
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(17393u, 14u)]), _wgslsmith_clamp_i32(countOneBits(0i), arg_3, -1i ^ arg_3)), (_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(2178u, 14u)], vec4<i32>(arg_3, 50032i, arg_3, arg_3)) >> (4294967295u % 32u)) >> (reverseBits(_wgslsmith_mod_u32(var_1.a.x, 0u)) % 32u), -16052i), _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_3, -33190i, 64893i) ^ vec3<i32>(firstTrailingBit(arg_3), arg_3, i32(-1i) * -1i), vec3<i32>(countOneBits(-arg_3), -2147483647i, _wgslsmith_mult_i32(-8596i, -1i))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.a.x, global1.a.x), 76264u)), var_0.a.x), 1u), 6u)];
    return vec3<i32>(var_2.x, i32(-1i) * -reverseBits(max(12284i, arg_3)), reverseBits(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zww, _wgslsmith_add_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, u_input.a.x), ~global3.a)), countOneBits(firstLeadingBit(abs(global3.a)))), _wgslsmith_f_op_f32(step(1061f, _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-global3.b))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(false, Struct_1(vec3<u32>(u_input.a.x, global1.a.x, global1.a.x), -210f, global1.c), vec3<i32>(-1i, -1i, -63302i), Struct_1(vec3<u32>(1u, 35586u, 0u), 1423f, vec2<f32>(391f, 596f)))), _wgslsmith_f_op_f32(-130f + -378f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.b - -2987f)))))));
    global4 = array<vec4<i32>, 14>();
    var var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -215f, global1.b, global3.c.x)), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(-561f + 1532f), global2.x, _wgslsmith_f_op_f32(293f - -862f)))), 541f, !any(vec2<bool>(true, true)), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2081i, -2147483647i, 0i), -28874i)), firstTrailingBit(vec3<u32>(var_0.a.x, global3.a.x, global1.a.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 901f, var_0.c.x)))))));
}

