struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), 24663i);

var<private> global1: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global2: vec2<bool>;

var<private> global3: vec2<i32> = vec2<i32>(293i, 29548i);

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = global4[_wgslsmith_index_u32(u_input.b, 24u)];
    return max(0i, u_input.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = 1i;
    global2 = !global0.a.yy;
    global1 = vec2<u32>(28141u, 34616u);
    global0 = Struct_1(select(vec3<bool>(true, true, true), select(!arg_0.a, select(global0.a, vec3<bool>(false, false, global2.x), select(arg_1, vec3<bool>(false, true, false), true)), false), arg_1), _wgslsmith_clamp_i32(global3.x, _wgslsmith_clamp_i32(countOneBits(~1i), -max(-1i, -17863i), i32(-1i) * -2147483647i), max(abs(-2147483647i), arg_2.b)));
    let var_1 = Struct_1(arg_2.a, _wgslsmith_dot_vec4_i32(firstLeadingBit(~(vec4<i32>(-1i, -1i, arg_2.b, u_input.a) & vec4<i32>(arg_0.b, 27328i, 2147483647i, arg_2.b))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-49015i, global3.x, global0.b, arg_0.b), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, global3.x, -32725i, arg_0.b), vec4<i32>(2147483647i, 0i, u_input.a, -2147483647i)), abs(vec4<i32>(54245i, global3.x, 2147483647i, -1i))))));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(abs(_wgslsmith_div_i32(-2147483647i, 1i)), -2147483647i), ~vec2<i32>(_wgslsmith_mod_i32(1i, min(arg_0.b, -2147483647i)), 49922i));
}

fn func_2() -> vec2<bool> {
    global0 = Struct_1(select(vec3<bool>(false, global2.x, !(global0.a.x & true)), !select(vec3<bool>(global2.x, false, true), !vec3<bool>(false, false, global2.x), any(vec4<bool>(false, false, global2.x, false))), !global0.a), u_input.a);
    global3 = vec2<i32>(-1i) * -(-_wgslsmith_div_vec2_i32(vec2<i32>(17163i, u_input.a), vec2<i32>(0i, -8494i)) & select(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, global0.b), vec2<i32>(-23240i, global0.b)), select(vec2<bool>(false, false), vec2<bool>(global0.a.x, global2.x), vec2<bool>(true, global2.x))));
    global3 = _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.a, global0.b)), ~func_3(Struct_1(global0.a, -global0.b), vec3<bool>(global2.x && true, true, all(global0.a)), Struct_1(vec3<bool>(true, global0.a.x, true), ~u_input.a)));
    var var_0 = Struct_1(vec3<bool>(global2.x, -1i > firstLeadingBit(_wgslsmith_clamp_i32(-6746i, -4354i, global3.x)), false), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1004f, -1407f, true)))) + 976f), _wgslsmith_f_op_f32(f32(-1f) * -304f)));
    global0 = global4[_wgslsmith_index_u32(~u_input.b, 24u)];
    return global0.a.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 24>();
    global3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, global0.b | 40752i), vec2<i32>(func_1(-1084f, -748f) << (0u % 32u), min(func_1(_wgslsmith_f_op_f32(min(486f, -264f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -_wgslsmith_div_i32(u_input.a, global3.x))), vec2<i32>(~2147483647i, firstLeadingBit(1i)));
    global0 = global4[_wgslsmith_index_u32(23436u, 24u)];
    global2 = func_2();
    var var_0 = Struct_1(!(!(!global0.a)), 9952i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-714f, -1507f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-983f - _wgslsmith_div_f32(1000f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1602f, -1545f))))));
}

