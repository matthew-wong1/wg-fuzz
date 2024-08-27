struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 0u, 0u);

var<private> global2: Struct_1 = Struct_1(true, false);

var<private> global3: array<f32, 18> = array<f32, 18>(380f, 1000f, 368f, 584f, 1000f, -176f, -1000f, 274f, 1154f, 1250f, -1261f, 989f, 1688f, -232f, 1022f, 902f, -889f, 1730f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = 4294967295u;
    var_0 = 4294967295u & (global1.x & global1.x);
    var_0 = firstTrailingBit(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.x, global1.x, global1.x, global1.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, u_input.a, 1u, 44404u), vec4<u32>(global1.x, u_input.c, u_input.a, 1u))));
    let var_1 = max(u_input.b.x, (-13599i & _wgslsmith_mult_i32(u_input.b.x, -2147483647i)) ^ u_input.b.x);
    let var_2 = vec2<f32>(-2325f, _wgslsmith_f_op_f32(f32(-1f) * -644f));
    return Struct_1(global2.a, all(vec4<bool>(false, false, any(select(vec4<bool>(false, global2.a, global2.b, global2.a), vec4<bool>(true, true, global2.b, global2.b), true)), _wgslsmith_f_op_f32(-arg_0.x) >= 148f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~global1.x, 18u)] + global3[_wgslsmith_index_u32(1578u, 18u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~0u, 18u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 18u)], global3[_wgslsmith_index_u32(44301u, 18u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, -511f)), !global2.a)), vec2<f32>(-1406f, _wgslsmith_f_op_f32(trunc(-562f)))))));
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-450f * 322f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -860f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = global2.a;
    var var_3 = 10026i;
    var var_4 = u_input.b.x;
    return any(select(vec2<bool>(!global2.b || all(global0[_wgslsmith_index_u32(global1.x, 3u)]), 1i <= -u_input.b.x), select(!(!vec2<bool>(global2.b, var_1.a)), select(!vec2<bool>(global2.a, var_1.b), vec2<bool>(true, false), vec2<bool>(false, false)), select(select(vec2<bool>(global2.a, true), vec2<bool>(false, true), true), !vec2<bool>(var_1.b, true), var_1.b)), !select(select(vec2<bool>(true, true), vec2<bool>(false, var_1.a), vec2<bool>(global2.a, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> u32 {
    return _wgslsmith_div_u32(59921u, global1.x);
}

fn func_1() -> vec3<i32> {
    var var_0 = 0u;
    global0 = array<vec3<bool>, 3>();
    let var_1 = func_2(vec3<f32>(global3[_wgslsmith_index_u32(~96510u, 18u)], global3[_wgslsmith_index_u32(global1.x, 18u)], 1014f));
    var var_2 = global3[_wgslsmith_index_u32(~func_4(func_3(), -1i, vec2<i32>(-max(u_input.b.x, u_input.b.x), u_input.b.x), vec3<u32>(~83259u & global1.x, firstTrailingBit(38752u), select(u_input.c, global1.x, all(vec2<bool>(global2.a, true))))), 18u)];
    let var_3 = var_1;
    return u_input.b.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, !(!select(any(vec3<bool>(global2.b, global2.a, false)), false, true)));
    let var_1 = _wgslsmith_sub_vec3_i32(-func_1(), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(0i, u_input.b.x, -1i), vec3<i32>(u_input.b.x, -9851i, -1i)), u_input.b.ywx) | firstTrailingBit(~u_input.b.zyx), vec3<i32>(firstLeadingBit(u_input.b.x << (global1.x % 32u)), -1i, ~u_input.b.x)));
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.c << (firstTrailingBit(global1.x) % 32u), abs(global1.x)), abs(~(~global1.x)), 1u), vec3<u32>(u_input.c, 5833u, ~u_input.c));
    let var_3 = true;
    let var_4 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - global3[_wgslsmith_index_u32(1u, 18u)]))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(31568u, u_input.c)), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 18u)] + global3[_wgslsmith_index_u32(0u, 18u)])))));
    var var_5 = 13778u;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~max(vec4<u32>(43577u, u_input.a, 4294967295u, 14720u), vec4<u32>(var_2.x, 0u, u_input.a, 4294967295u)), ~(vec4<u32>(u_input.c, 4294967295u, 13096u, 55876u) << (vec4<u32>(global1.x, 4294967295u, 36895u, var_2.x) % vec4<u32>(32u))), var_4.a), -21208i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(63166u, 18u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 18u)] + global3[_wgslsmith_index_u32(var_2.x, 18u)])), _wgslsmith_f_op_f32(f32(-1f) * -2488f))));
}

