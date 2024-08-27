struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 14> = array<u32, 14>(34119u, 26920u, 23371u, 1u, 9043u, 4294967295u, 28836u, 56006u, 1u, 4294967295u, 0u, 0u, 4294967295u, 0u);

var<private> global2: array<vec3<u32>, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = Struct_3(select(vec3<bool>(any(select(arg_0.a.wwz, global0.c.a.xww, false)), any(arg_0.a.xw), all(arg_0.a.ww)), arg_0.a.wyx, any(vec4<bool>(all(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), false, true, global0.c.a.x))), Struct_2(select(!select(arg_0.a, vec4<bool>(global0.a.x, false, arg_0.a.x, arg_0.a.x), vec4<bool>(false, true, arg_0.a.x, global0.b.a.x)), vec4<bool>(true, arg_0.a.x | true, global0.b.a.x, global0.b.a.x), vec4<bool>(true, select(true, true, true), global0.b.a.x, false))), Struct_2(vec4<bool>(true, any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(329f, -1413f)))), global0.e.a.xy), Struct_1(global0.e.a, min(min(4766u, _wgslsmith_add_u32(u_input.a, global0.e.e)), _wgslsmith_dot_vec4_u32(~vec4<u32>(48803u, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(global0.e.b, 14u)], 1u), ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 14u)], u_input.a, 113109u, u_input.c))), _wgslsmith_add_i32(_wgslsmith_sub_i32(global0.e.c, 1i), i32(-1i) * -33856i) | (firstLeadingBit(global0.e.c) | _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.e.c), vec2<i32>(global0.e.c, global0.e.c))), min(~_wgslsmith_clamp_u32(global0.e.d, 8795u, 1u), ~global1[_wgslsmith_index_u32(4294967295u, 14u)] ^ _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(0u, 32u)], vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], 75782u, global0.e.e))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38601u, 14u)], 14u)], 1u), global2[_wgslsmith_index_u32(1u, 32u)]), ~global2[_wgslsmith_index_u32(1u, 32u)]), global2[_wgslsmith_index_u32(global0.e.e, 32u)])));
    global2 = array<vec3<u32>, 32>();
    var var_0 = vec4<i32>(global0.e.c, 2147483647i, ~global0.e.c, global0.e.c);
    var var_1 = Struct_2(select(arg_0.a, select(vec4<bool>(true, global0.e.a.x >= global0.d.x, all(vec4<bool>(global0.c.a.x, arg_0.a.x, false, false)), all(arg_0.a.yz)), arg_0.a, false), true));
    global2 = array<vec3<u32>, 32>();
    return global0.d.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = ~u_input.b;
    global0 = Struct_3(!(!vec3<bool>(global0.e.a.x < global0.d.x, true, arg_1.a.x & global0.c.a.x)), Struct_2(!select(!arg_1.a, arg_1.a, any(arg_1.a))), Struct_2(select(!select(vec4<bool>(global0.c.a.x, global0.a.x, true, true), vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), vec4<bool>(false, global0.c.a.x, arg_1.a.x, global0.a.x)), global0.c.a, vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 14u)] > global0.e.b, global0.b.a.x, select(global0.c.a.x, false, false), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(555f + -416f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.e.a.x - 1699f))))), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(global0.c.a))), _wgslsmith_f_op_f32(round(-1764f)))), -1000f, _wgslsmith_f_op_f32(global0.e.a.x * _wgslsmith_f_op_f32(max(global0.d.x, -241f)))), firstTrailingBit(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(0u, 14u)] & var_0.x)), ~(-_wgslsmith_mult_i32(1i, global0.e.c)), ~global0.e.b, _wgslsmith_sub_u32(min(~global1[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u), 34495u)));
    return global0.a.xx;
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.a.x) * -1110f) + _wgslsmith_f_op_f32(f32(-1f) * -150f));
    var var_1 = arg_0.x;
    var var_2 = Struct_4(-vec2<i32>(max(22974i, 1i), -global0.e.c));
    var var_3 = Struct_4(vec2<i32>(_wgslsmith_add_i32(-1i, 2147483647i), var_2.a.x) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-29549i, var_2.a.x >> (55531u % 32u)), vec2<i32>(7233i, ~6866i)));
    var var_4 = select(vec2<bool>(!((var_0 > -357f) == (u_input.c <= 1u)), false), func_2(-_wgslsmith_sub_i32(var_3.a.x, -797i), Struct_2(!(!vec4<bool>(false, false, global0.a.x, global0.a.x)))), !select(func_2(~var_3.a.x, Struct_2(vec4<bool>(global0.c.a.x, true, false, false))), vec2<bool>(-1i < var_2.a.x, func_2(global0.e.c, Struct_2(global0.c.a)).x), all(global0.b.a.wxz)));
    return func_2(global0.e.c, Struct_2(!global0.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global0.b.a.x & global0.a.x, !(!(!global0.c.a.x)) | (any(func_1(u_input.b)) && false), true);
    let var_1 = Struct_4(vec2<i32>(global0.e.c, global0.e.c));
    var var_2 = 66471u;
    var_2 = 4294967295u << (_wgslsmith_mod_u32(global0.e.e, 1u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-32160i, ~reverseBits(vec4<u32>(u_input.a, 0u, 35100u, u_input.a)) | (vec4<u32>(u_input.b.x, countOneBits(1u), ~u_input.b.x, 4294967295u) | (abs(vec4<u32>(u_input.b.x, u_input.a, 42096u, 4294967295u)) >> ((vec4<u32>(12017u, u_input.b.x, u_input.b.x, u_input.c) | vec4<u32>(u_input.c, u_input.a, u_input.b.x, 29943u)) % vec4<u32>(32u)))), _wgslsmith_mult_i32(countOneBits(global0.e.c), _wgslsmith_mod_i32(~global0.e.c, min(var_1.a.x, var_1.a.x)) & var_1.a.x));
}

