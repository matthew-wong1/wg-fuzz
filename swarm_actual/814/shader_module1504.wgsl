struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec3<i32>(-25634i, 2147483647i, -1i), 4294967295u, -1322f);

var<private> global1: array<vec3<f32>, 14>;

var<private> global2: Struct_1 = Struct_1(0i, vec3<i32>(-42920i, 0i, 48011i), 39825u, 695f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(2147483647i, vec3<i32>(firstLeadingBit(i32(-1i) * -30518i) << (select(u_input.d.x, ~1u, true) % 32u), abs(-firstTrailingBit(u_input.e)), u_input.c.x), u_input.d.x, global2.d);
    var_0 = Struct_1(0i, u_input.b.yxy, 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(2520f)))))) * global2.d));
    var var_1 = vec4<u32>(35380u, ~(~4294967295u), u_input.d.x, _wgslsmith_mult_u32(global2.c & firstLeadingBit(_wgslsmith_mod_u32(6788u, global0.c)), ~(~_wgslsmith_div_u32(0u, 1u))));
    let var_2 = ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 42188u, 28377u, global0.c) | vec4<u32>(u_input.d.x, global0.c, 1u, global0.c), ~vec4<u32>(global2.c, var_1.x, global2.c, var_1.x))));
    var var_3 = _wgslsmith_f_op_f32(sign(209f));
    return _wgslsmith_f_op_f32(-962f * _wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(select(-1584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f * global0.d)), true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = -2147483647i;
    var var_1 = Struct_1(~(-1i), global0.b, arg_1.c, arg_1.d);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.d))), any(vec4<bool>(false, false, true, true)) && false)), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.d, arg_2.d), var_1.d)))), global1[_wgslsmith_index_u32(1u, 14u)]);
    let var_4 = _wgslsmith_div_vec2_u32(vec2<u32>(~firstLeadingBit(max(0u, 0u)), reverseBits(var_1.c)), vec2<u32>(_wgslsmith_clamp_u32(~53883u, _wgslsmith_mod_u32(global0.c, reverseBits(4294967295u)), ~_wgslsmith_div_u32(var_2.c, 0u)), _wgslsmith_mult_u32(~(~50133u), arg_2.c)));
    return select(_wgslsmith_add_i32(u_input.b.x, 2147483647i), var_2.a, any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(true, true, false))))));
}

fn func_2() -> vec3<i32> {
    global2 = Struct_1(func_4(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a, -1528i, u_input.e, 18816i), reverseBits(u_input.b), u_input.b >> (vec4<u32>(global0.c, global0.c, u_input.d.x, global2.c) % vec4<u32>(32u)))), Struct_1(global0.b.x, global2.b, global0.c, global0.d), Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(2904i, 2147483647i, 1i, 20519i)), global0.b, ~(~u_input.d.x), _wgslsmith_f_op_f32(func_3()))), ~(-global0.b) ^ (select(u_input.c, _wgslsmith_add_vec3_i32(vec3<i32>(-10309i, 60805i, 0i), vec3<i32>(global0.a, global0.a, global2.b.x)), u_input.d.x > 84531u) | _wgslsmith_mult_vec3_i32(global2.b, global0.b ^ vec3<i32>(u_input.e, -21093i, -18102i))), global2.c, 1321f);
    global0 = Struct_1(abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, u_input.c.x | global2.a), min(-10110i, 2147483647i))), -vec3<i32>(~global0.a, -68111i | global2.a, ~u_input.e) & min(_wgslsmith_div_vec3_i32(global0.b, vec3<i32>(-2147483647i, 1i, global2.b.x)), vec3<i32>(global0.a, u_input.b.x, -1i)), firstLeadingBit(~(~60888u)) & countOneBits(_wgslsmith_div_u32(global0.c & 36172u, firstLeadingBit(1u))), _wgslsmith_f_op_f32(-global0.d));
    global1 = array<vec3<f32>, 14>();
    global1 = array<vec3<f32>, 14>();
    let var_0 = global1[_wgslsmith_index_u32(24272u, 14u)];
    return vec3<i32>(0i, 3809i, -(~(-1i)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    global2 = arg_3;
    let var_0 = any(vec4<bool>(false, true, arg_2, false));
    var var_1 = Struct_1(34207i, -global0.b, _wgslsmith_dot_vec2_u32(u_input.d, ~(~vec2<u32>(0u, arg_3.c))), arg_3.d);
    global2 = Struct_1(countOneBits(abs(50455i)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(arg_3.b << (vec3<u32>(global0.c, global2.c, 21617u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, global0.b.x, 0i) << (vec3<u32>(var_1.c, arg_1.c, var_1.c) % vec3<u32>(32u))), -(var_1.b >> (vec3<u32>(arg_1.c, var_1.c, arg_3.c) % vec3<u32>(32u)))), ~(~4294967295u), global0.d);
    global0 = arg_3;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, -117f, global2.d)), _wgslsmith_div_vec3_f32(vec3<f32>(-345f, global0.d, global0.d), vec3<f32>(-1069f, -1000f, arg_3.d)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, arg_3.d, var_1.d)))), _wgslsmith_f_op_vec3_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u) << (var_1.c % 32u), 14u)])));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(global2.b.x, Struct_1(-global2.b.x, func_2(), min(4294967295u, firstLeadingBit(u_input.d.x) << (_wgslsmith_mult_u32(3476u, 558u) % 32u)), 1453f), all(vec2<bool>(true, false)), Struct_1(~(-(~global2.b.x)), countOneBits(vec3<i32>(0i, -2147483647i, -2147483647i)) ^ global0.b, firstTrailingBit(1u), global0.d)));
    let var_1 = min(21510u, 1u) & ~(~select(55683u, abs(4294967295u), all(vec3<bool>(false, true, true))));
    var var_2 = _wgslsmith_mult_i32(-2147483647i, global0.a);
    let var_3 = ~(u_input.d.x | 0u);
    global2 = Struct_1(-10302i, abs(vec3<i32>(24190i >> (global2.c % 32u), ~(-2147483647i), firstLeadingBit(0i))) ^ vec3<i32>(-46913i, global2.a, ~(~(-2147483647i))), _wgslsmith_div_u32(abs(4294967295u), abs(_wgslsmith_div_u32(var_1, ~global2.c))), -1000f);
    return Struct_1(countOneBits(global2.a), countOneBits(firstTrailingBit(vec3<i32>(countOneBits(u_input.c.x), ~u_input.b.x, global2.b.x))), min(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(var_3, 26526u, 38137u, u_input.d.x), ~vec4<u32>(var_1, var_3, var_1, 25622u)), ~vec4<u32>(1u, 5910u, 1u, var_1)), global2.c), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true != !(any(vec3<bool>(true, true, true)) | true);
    global0 = Struct_1(-15015i, global2.b, ~11087u, global0.d);
    var var_1 = global0.d;
    global0 = func_1();
    let var_2 = func_1();
    let var_3 = vec3<i32>(firstLeadingBit(-52323i >> (firstTrailingBit(global2.c) % 32u)), i32(-1i) * -select(-1i, -2147483647i, !var_0), func_4(u_input.b, func_1(), func_1()));
    global1 = array<vec3<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.x, global2.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_2.a, -4330i), var_3.x)), vec3<i32>(-1i) * -(~vec3<i32>(24092i, var_2.b.x, 35397i))), ~(-var_3.x) >> (_wgslsmith_div_u32(52396u, _wgslsmith_add_u32(2871u, 1u)) % 32u), _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(var_3, vec3<i32>(-8410i, 1410i, -22393i)), -var_3), _wgslsmith_sub_u32(~(~67048u) >> (_wgslsmith_mult_u32(1u, abs(u_input.d.x)) % 32u), select(13982u, abs(_wgslsmith_clamp_u32(1u, 7461u, global2.c)), var_0)));
}

