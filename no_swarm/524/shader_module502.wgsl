struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, Struct_1(55289u));

var<private> global1: i32 = 21045i;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global2 = !(!vec3<bool>(true, any(!global2.yx), !any(global2.zx)));
    var var_0 = _wgslsmith_f_op_f32(149f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1349f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-651f, -1061f))))))));
    global0 = Struct_4(global0.a, Struct_1(_wgslsmith_sub_u32(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a, global0.b.a, global0.b.a, global0.b.a), vec4<u32>(u_input.e, u_input.c.x, global0.b.a, 0u))), u_input.e)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -595f, -405f)), vec3<f32>(-594f, 1055f, -1254f), all(vec4<bool>(true, false, global2.x, true))))), vec3<f32>(1f, 1f, 1f), select(vec3<bool>(select(false, true, global0.a), all(vec3<bool>(true, global0.a, global2.x)), all(vec3<bool>(global0.a, true, true))), select(select(vec3<bool>(global0.a, false, false), vec3<bool>(true, false, global2.x), global0.a), select(vec3<bool>(global0.a, true, global2.x), vec3<bool>(global2.x, global0.a, false), false), !vec3<bool>(global2.x, global0.a, true)), select(!vec3<bool>(false, global0.a, global0.a), !vec3<bool>(true, global0.a, global0.a), true)))), vec3<f32>(-1857f, 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(968f, -185f)) * _wgslsmith_f_op_f32(sign(-372f))), _wgslsmith_f_op_f32(f32(-1f) * -1601f)))));
    let var_2 = countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.d.x)), countOneBits(vec2<i32>(2237i, 0i))), firstLeadingBit(2147483647i), u_input.d.x, 0i));
    return -1000f;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = arg_1.a;
    var var_1 = arg_1;
    var var_2 = arg_1.b;
    global0 = Struct_4(!(!global2.x), Struct_1(u_input.a.x & 1u));
    let var_3 = vec2<u32>(0u, 67466u);
    return select(vec3<bool>(!(!(2147483647i <= u_input.d.x)), !global2.x || global0.a, false), select(vec3<bool>(any(select(vec3<bool>(global0.a, global0.a, var_1.a), vec3<bool>(var_1.a, false, true), vec3<bool>(false, false, var_1.a))), -474f >= _wgslsmith_f_op_f32(-arg_2), true), select(vec3<bool>(true, arg_1.a, true), select(vec3<bool>(global0.a, true, global2.x), select(vec3<bool>(arg_1.a, true, false), vec3<bool>(arg_1.a, global0.a, global2.x), vec3<bool>(arg_1.a, global0.a, arg_1.a)), arg_1.a), vec3<bool>(var_1.a, any(vec2<bool>(global2.x, global2.x)), arg_1.a)), false), !(!(!vec3<bool>(arg_1.a, true, global0.a))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = select(select(func_4(~vec4<u32>(global0.b.a, 4294967295u, global0.b.a, 1u) >> ((vec4<u32>(global0.b.a, 10543u, global0.b.a, global0.b.a) | vec4<u32>(4294967295u, global0.b.a, 4294967295u, global0.b.a)) % vec4<u32>(32u)), Struct_4(global0.a, Struct_1(u_input.c.x)), _wgslsmith_f_op_f32(func_3()), -(~vec2<i32>(u_input.b, -22458i))), func_4(vec4<u32>(global0.b.a, u_input.a.x, 17739u, u_input.e) | (vec4<u32>(4294967295u, u_input.c.x, global0.b.a, u_input.e) ^ vec4<u32>(global0.b.a, 1u, 0u, 1u)), Struct_4(global0.a, global0.b), _wgslsmith_f_op_f32(step(699f, _wgslsmith_f_op_f32(step(-270f, 1817f)))), ~countOneBits(u_input.d.xy)), any(func_4(vec4<u32>(global0.b.a, 60942u, 0u, u_input.c.x), Struct_4(global2.x, global0.b), _wgslsmith_f_op_f32(func_3()), ~u_input.d.zz).zz)), !func_4(firstTrailingBit(~vec4<u32>(83608u, 1717u, 32509u, global0.b.a)), Struct_4(global0.a, global0.b), -105f, vec2<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), abs(-26010i))), select(!vec3<bool>(u_input.c.x <= 87954u, any(vec4<bool>(true, true, true, false)), global0.a && arg_0.x), vec3<bool>(select(any(vec4<bool>(global2.x, true, global0.a, arg_0.x)), true, !global0.a), global2.x, true), !vec3<bool>(true, true, -2147483647i <= u_input.d.x)));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2391f - _wgslsmith_f_op_f32(-584f + -1148f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) * _wgslsmith_div_f32(454f, 136f)), global2.x)), -1516f), -1133f);
    var var_2 = global0.b;
    var_2 = global0.b;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.x, -1000f)))), var_1.x, 230f);
    return Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(~57957u, ~1u, global0.b.a >> (global0.b.a % 32u), var_2.a), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.a, 51354u, 1u, u_input.c.x), vec4<u32>(11184u, 57072u, 0u, global0.b.a)) << (select(vec4<u32>(u_input.c.x, var_2.a, 5875u, 0u), vec4<u32>(41574u, global0.b.a, 7841u, 0u), vec4<bool>(global0.a, true, global2.x, true)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_3(firstTrailingBit(~abs(arg_0.a)) & 49135u, u_input.d, firstLeadingBit(min(max(vec4<i32>(27290i, 2147483647i, -2147483647i, u_input.d.x) | vec4<i32>(12770i, 2147483647i, -1i, u_input.b), max(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -9191i), vec4<i32>(-32313i, u_input.b, u_input.d.x, u_input.d.x))), vec4<i32>(1i, -2147483647i, u_input.d.x, min(u_input.b, u_input.d.x)))));
    let var_1 = func_2(global2.zz);
    var var_2 = u_input.a;
    let var_3 = firstTrailingBit(vec3<i32>(var_0.b.x, -28141i, _wgslsmith_dot_vec3_i32(~countOneBits(u_input.d), vec3<i32>(_wgslsmith_add_i32(0i, u_input.b), -1i, 1i))));
    var var_4 = global2.x;
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) * -1246f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(581f - -1252f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-374f, -727f), _wgslsmith_f_op_f32(func_3())))), ~(~select(vec4<u32>(arg_0.a, arg_0.a, 1u, 9604u), vec4<u32>(45610u, var_1.a, var_0.a, 4294967295u), true) << (~vec4<u32>(var_1.a, 1596u, 1u, 1u) % vec4<u32>(32u))), 1u, _wgslsmith_mult_vec3_i32(var_0.b, min(vec3<i32>(-12116i, u_input.b, -1i), _wgslsmith_div_vec3_i32(-u_input.d, var_3))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-617f - 433f), -528f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(412f, 594f), vec2<f32>(133f, 941f))), min(-2147483647i, var_3.x) >= -var_0.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1602f, 822f), vec2<f32>(1000f, 978f)) * vec2<f32>(249f, -867f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(17562u));
}

