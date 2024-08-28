struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(470f, 419f, 1000f, 408f);

var<private> global1: u32 = 72818u;

var<private> global2: array<Struct_2, 20>;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(-1i, -29405i, -756i), vec2<u32>(30908u, 5879u), Struct_1(vec2<u32>(1u, 65493u)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1f, -1082f);
    var var_1 = global3.c;
    var var_2 = 323f;
    let var_3 = global3.c;
    var_0 = global0.xww;
    return var_1.a;
}

fn func_2() -> Struct_2 {
    let var_0 = global3.c;
    global3 = global2[_wgslsmith_index_u32(4294967295u, 20u)];
    let var_1 = Struct_2(-global3.a, select(func_3(), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(8465u, u_input.a)), vec2<bool>(true, true)) & ~(var_0.a >> (vec2<u32>(43171u, 13978u) % vec2<u32>(32u))), global3.c);
    var var_2 = vec4<u32>(~(~(~_wgslsmith_mod_u32(1u, u_input.b.x))), 10788u, firstLeadingBit(reverseBits(abs(~0u))), global3.b.x);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1126f, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, global0.x, -387f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-693f, 362f, 540f, global0.x) + vec4<f32>(global0.x, global0.x, 933f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1146f, -1014f, -887f, 908f), vec4<f32>(global0.x, 799f, global0.x, global0.x))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-global0.x), global0.x)))));
    return Struct_2(_wgslsmith_add_vec3_i32(abs(~vec3<i32>(31596i, -1i, u_input.c.x)), countOneBits(max(-vec3<i32>(u_input.c.x, global3.a.x, global3.a.x), global3.a))), _wgslsmith_add_vec2_u32(var_1.c.a, vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, firstTrailingBit(vec3<u32>(12306u, 0u, global3.c.a.x))), 4294967295u & _wgslsmith_sub_u32(57366u, var_2.x))), var_1.c);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<Struct_2, 20>();
    global3 = func_2();
    let var_0 = countOneBits(u_input.b.xy);
    var var_1 = ~(-26954i);
    let var_2 = ~abs(~countOneBits(firstTrailingBit(1u)));
    return func_2().c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.yyy))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.wzw))), vec3<f32>(251f, global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-arg_1.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.wxz)));
    let var_1 = Struct_2(global3.a, global3.b, arg_2);
    let var_2 = Struct_2(-(~vec3<i32>(27913i, global3.a.x, global3.a.x)) | max(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.x, u_input.c.x, 1i), global3.a, vec3<i32>(var_1.a.x, 47893i, -1i)), ~vec3<i32>(u_input.c.x, u_input.c.x, global3.a.x), vec3<bool>(true, true, true)), vec3<i32>(u_input.c.x, var_1.a.x, _wgslsmith_mult_i32(2147483647i, global3.a.x))), ~arg_2.a, Struct_1(vec2<u32>(global3.b.x, 19892u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(457f, global0.x, 1828f, 462f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(862f, -1744f, -965f, -435f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -969f, global0.x, arg_1.x)))), all(vec2<bool>(true, true))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, 794f))), _wgslsmith_f_op_f32(f32(-1f) * -608f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-423f, 208f, arg_1.x, arg_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(195f, var_0.x, 588f, 1000f), vec4<f32>(var_0.x, global0.x, -258f, -1411f)))))));
    var var_4 = func_2();
    return vec4<i32>(-u_input.c.x, reverseBits(-1i), -global3.a.x, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 80217i;
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x >> (u_input.a % 32u), 1i, global3.a.x, -1i << (u_input.b.x % 32u)), ~vec4<i32>(-7699i, -39549i, var_0, -1i) | vec4<i32>(var_0, global3.a.x, 76527i, u_input.c.x), vec4<i32>(-u_input.c.x, var_0, var_0, -14602i)), ~func_4(global3.c, _wgslsmith_f_op_vec2_f32(-global0.wy), func_1(-20693i))) << (vec4<u32>(global3.b.x, abs(~global3.b.x), max(global3.b.x, ~global3.c.a.x), global3.b.x) % vec4<u32>(32u));
    global3 = global2[_wgslsmith_index_u32(global3.b.x, 20u)];
    global2 = array<Struct_2, 20>();
    global2 = array<Struct_2, 20>();
    let var_2 = 169f;
    var var_3 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f), global0.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f) - var_2)) == true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~global3.c.a, countOneBits(~vec2<u32>(global3.c.a.x, u_input.b.x) << (_wgslsmith_sub_vec2_u32(vec2<u32>(33315u, global3.c.a.x), vec2<u32>(global3.c.a.x, 32723u)) % vec2<u32>(32u)))), u_input.a, ~global3.c.a.x, -49149i, var_2);
}

