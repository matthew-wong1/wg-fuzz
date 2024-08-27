struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 11> = array<u32, 11>(0u, 4294967295u, 1u, 4294967295u, 23542u, 1u, 21453u, 0u, 1u, 71586u, 1u);

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = arg_2.x;
    global0 = ~_wgslsmith_add_vec3_i32(-((vec3<i32>(global0.x, arg_1.x, global0.x) & vec3<i32>(0i, 50466i, 55884i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(2161u, global2[_wgslsmith_index_u32(0u, 11u)], 25979u), vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, global0.x, -2147483647i), vec3<i32>(global0.x, arg_1.x, 1i), vec3<i32>(1i, -27080i, 18035i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, 1i, global0.x), vec3<i32>(2025i, global0.x, 34963i))));
    let var_1 = Struct_1(0u == global2[_wgslsmith_index_u32(select(~global2[_wgslsmith_index_u32(4294967295u, 11u)] & reverseBits(global2[_wgslsmith_index_u32(u_input.a, 11u)]), ~(~57512u), global1.e >= 366f), 11u)], select(vec2<bool>(false, any(!vec4<bool>(arg_2.x, true, var_0, false))), select(vec2<bool>(!arg_2.x, true), vec2<bool>(arg_2.x, true), arg_2.xy), vec2<bool>(all(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, arg_2.x), global1.b.x)), true)), !(!(true != var_0)), countOneBits(_wgslsmith_sub_i32(~global0.x, _wgslsmith_clamp_i32(global1.d, 55320i, -2147483647i)) | _wgslsmith_dot_vec2_i32(~global0.yx, ~vec2<i32>(-2147483647i, 3560i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), _wgslsmith_f_op_f32(f32(-1f) * -322f))));
    var var_2 = vec4<u32>(global2[_wgslsmith_index_u32(select(~(~(~35616u)), 96879u, var_1.c), 11u)], abs(u_input.a), 4294967295u, 1u);
    global0 = vec3<i32>(1i, -11388i, reverseBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.x, 48540i), reverseBits(var_1.d)), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.x, 0i), ~arg_1.x))));
    return var_1;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = false;
    var var_1 = select(vec2<bool>(true, firstLeadingBit(global1.d) >= -2147483647i), !(!(!select(vec2<bool>(var_0, var_0), arg_2.b, true))), select(global1.b, select(select(vec2<bool>(true, arg_2.c), select(vec2<bool>(true, true), global1.b, vec2<bool>(false, true)), arg_2.b), func_1(global1.e, global0.zy << (vec2<u32>(4294967295u, arg_1.x) % vec2<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(false, var_0, true), false)).b, arg_2.b), true != var_0));
    let var_2 = abs(arg_2.d);
    var var_3 = arg_2;
    var_1 = !var_3.b;
    return _wgslsmith_clamp_i32(arg_2.d, 1i, min(_wgslsmith_div_i32(firstTrailingBit(func_1(420f, vec2<i32>(arg_2.d, arg_2.d), vec3<bool>(true, true, true)).d), -_wgslsmith_dot_vec4_i32(vec4<i32>(5022i, var_2, 56142i, -28579i), vec4<i32>(global1.d, global1.d, global1.d, 2147483647i))), 2147483647i));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<bool> {
    global2 = array<u32, 11>();
    let var_0 = vec4<bool>(any(!vec3<bool>(all(arg_2.b), true, any(arg_2.b))), global1.c, !arg_2.a, func_1(664f, vec2<i32>(-arg_2.d, func_3(_wgslsmith_f_op_vec2_f32(abs(arg_1)), vec3<u32>(102124u, arg_0, u_input.a), func_1(global1.e, global0.zz, vec3<bool>(false, false, false)))), select(vec3<bool>(true, arg_2.a, false == global1.c), !select(vec3<bool>(false, false, arg_2.b.x), vec3<bool>(arg_2.c, true, arg_2.b.x), true), vec3<bool>(false, -1i > global1.d, false && arg_2.b.x))).b.x);
    var var_1 = firstLeadingBit(vec2<i32>(global1.d, abs(arg_2.d)));
    var var_2 = arg_2.d;
    let var_3 = var_0.x;
    return func_1(_wgslsmith_f_op_f32(ceil(arg_2.e)), _wgslsmith_div_vec2_i32(select(global0.zy, -firstLeadingBit(vec2<i32>(global0.x, 1i)), func_1(271f, vec2<i32>(global1.d, -2147483647i), vec3<bool>(true, global1.b.x, false)).b), vec2<i32>(~max(var_1.x, global0.x), arg_2.d)), vec3<bool>(!func_1(1000f, global0.xx, vec3<bool>(var_3, global1.b.x, false)).c & true, true, true)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, select(vec2<bool>(false, false), global1.b, select(func_2(1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.e) - vec2<f32>(-856f, global1.e)), func_1(global1.e, vec2<i32>(-2147483647i, global1.d), vec3<bool>(global1.b.x, false, true)), reverseBits(vec4<u32>(61726u, 36384u, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(45004u, 11u)]))), select(vec2<bool>(true, false), vec2<bool>(global1.b.x, false), any(vec4<bool>(global1.a, true, global1.c, false))), true)), select(true, any(!(!vec3<bool>(global1.a, global1.c, global1.b.x))), all(!select(global1.b, vec2<bool>(global1.a, global1.b.x), true))), global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.e, 1035f, global1.a)) - _wgslsmith_f_op_f32(max(-1230f, _wgslsmith_f_op_f32(exp2(global1.e))))));
    global2 = array<u32, 11>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(455f, _wgslsmith_div_f32(global1.e, _wgslsmith_f_op_f32(-global1.e))))) * _wgslsmith_f_op_f32(-var_0.e));
    global1 = func_1(_wgslsmith_f_op_f32(-858f * global1.e), vec2<i32>(~global1.d, -1i), select(select(!select(vec3<bool>(false, var_0.a, true), vec3<bool>(true, var_0.a, var_0.b.x), true), !select(vec3<bool>(false, false, var_0.c), vec3<bool>(var_0.b.x, false, var_0.c), false), true), !vec3<bool>(var_0.a, true, var_0.a), !(!vec3<bool>(global1.b.x, true, var_0.b.x))));
    let var_2 = countOneBits(vec3<i32>(-5745i, _wgslsmith_add_i32(-25726i, _wgslsmith_sub_i32(var_0.d, var_0.d)), -_wgslsmith_add_i32(2147483647i, -1898i))) | vec3<i32>(-19521i, var_0.d, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, var_0.d), global0.zy) ^ abs(476i), firstLeadingBit(9439i | var_0.d)));
    var var_3 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(61128u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 13653u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 13828u, 4294967295u)), _wgslsmith_sub_u32(0u, ~u_input.a), firstTrailingBit(u_input.a)), vec4<u32>(_wgslsmith_sub_u32(16846u, global2[_wgslsmith_index_u32(1u, 11u)]), 0u, global2[_wgslsmith_index_u32(20417u, 11u)], ~global2[_wgslsmith_index_u32(u_input.a, 11u)]) | vec4<u32>(~global2[_wgslsmith_index_u32(u_input.a, 11u)], 1u, u_input.a, reverseBits(49747u))), ~vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), vec3<u32>(global2[_wgslsmith_index_u32(0u, 11u)], 45372u, 7208u))), 11u)], max(~u_input.a, ~63361u), global2[_wgslsmith_index_u32(38415u, 11u)], 4294967295u), var_0.c);
    var var_4 = true;
    global0 = _wgslsmith_sub_vec3_i32(-(~(~var_2)), max(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.d, var_0.d, global1.d, 26146i), -vec4<i32>(-1i, var_0.d, -621i, -1i)), reverseBits(~0i), var_2.x), vec3<i32>(1i, (i32(-1i) * -19498i) << (_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 26453u) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-8908i, var_0.d, 1i), vec3<i32>(var_0.d, global0.x, 1i)))));
    let var_5 = -32596i;
    let x = u_input.a;
    s_output = StorageBuffer(global1.e, select(vec3<u32>(14622u, 7394u, u_input.a), _wgslsmith_div_vec3_u32(var_3.zww, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(102104u, var_3.x, 1u), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], 17280u, 21419u))), select(select(select(vec3<bool>(true, true, var_0.c), vec3<bool>(false, var_0.a, false), vec3<bool>(false, false, false)), vec3<bool>(global1.a, false, true), any(vec2<bool>(var_0.a, false))), !select(vec3<bool>(var_0.a, true, false), vec3<bool>(true, true, global1.c), var_0.c), global1.b.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, global1.e, 1000f)))), vec3<f32>(-407f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e + -804f) + -717f), -108f))));
}

