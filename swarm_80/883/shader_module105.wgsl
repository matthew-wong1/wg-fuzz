struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<i32>(42916i, 15508i), 1741i));

var<private> global2: vec4<u32>;

var<private> global3: array<u32, 19> = array<u32, 19>(1u, 62673u, 14956u, 25557u, 0u, 0u, 0u, 19916u, 1u, 2229u, 0u, 28824u, 1u, 0u, 1u, 1888u, 4294967295u, 4294967295u, 11425u);

var<private> global4: vec2<i32> = vec2<i32>(66631i, 1i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1276f + _wgslsmith_f_op_f32(1f * -662f))), _wgslsmith_f_op_f32(select(498f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-262f, -559f))) + -1313f), any(vec3<bool>(true, select(false, true, false), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f - _wgslsmith_div_f32(435f, 1000f))));
    global2 = ~(~select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(23010u, global3[_wgslsmith_index_u32(u_input.c.x, 19u)], 27309u, global3[_wgslsmith_index_u32(48373u, 19u)]), u_input.b, u_input.b), vec4<u32>(global2.x, 48246u, global2.x << (global3[_wgslsmith_index_u32(u_input.c.x, 19u)] % 32u), global3[_wgslsmith_index_u32(u_input.c.x, 19u)]), global2.x > 1u));
    global2 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1055f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1048f * var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 709f))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_0.x, -267f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(657f, 244f, -1573f, var_1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(min(var_0.x, 151f)), var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(204f, 350f, -709f, -298f), vec4<f32>(-147f, var_0.x, var_1.x, 1979f), vec4<bool>(true, false, false, false)))), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0.x, 836f) + vec4<f32>(-1190f, 1000f, 627f, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, var_0.x, -929f) + vec4<f32>(-1414f, -1000f, var_1.x, 951f)))))));
    return countOneBits(vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(~global2.x), reverseBits(u_input.a)), 943u, 4294967295u, _wgslsmith_add_u32(0u, max(4294967295u, global3[_wgslsmith_index_u32(1u, 19u)]))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global2 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, func_3()), reverseBits(vec4<u32>(_wgslsmith_add_u32(0u, u_input.c.x), global2.x, ~u_input.a, global2.x)) ^ u_input.c);
    global1 = array<Struct_1, 1>();
    global2 = u_input.c;
    var var_0 = select(vec4<bool>(false, !all(vec4<bool>(true, true, true, true)), true, true), !vec4<bool>(true, true, all(vec2<bool>(true, true)), true), select(true, select(false, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true), -countOneBits(global0.b) == min(_wgslsmith_clamp_i32(arg_0.a.x, -1i, arg_0.b), reverseBits(arg_0.a.x))));
    global3 = array<u32, 19>();
    return Struct_2(u_input.b, Struct_1(vec2<i32>(-1i) * -(global0.a >> (vec2<u32>(34615u, 4294967295u) % vec2<u32>(32u))), max(_wgslsmith_add_i32(global4.x, global4.x), u_input.d << (~48257u % 32u))), firstTrailingBit(~(-_wgslsmith_div_vec4_i32(vec4<i32>(global4.x, -2782i, 2147483647i, arg_0.a.x), vec4<i32>(2147483647i, arg_0.b, global4.x, global0.a.x)))), Struct_1(firstTrailingBit(reverseBits(firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i)))), -25578i), -global0.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec2<bool> {
    var var_0 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global2.x), 1u)]);
    global1 = array<Struct_1, 1>();
    return vec2<bool>(all(select(!arg_0, vec4<bool>(all(vec3<bool>(true, false, true)), !arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, all(arg_0.xy), arg_0.x, false))), u_input.a != 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(all(vec2<bool>(true, true)) == (_wgslsmith_mult_u32(global2.x, u_input.c.x) > ~57869u), any(vec2<bool>(true, true))), select(func_1(vec4<bool>(true, true, true, true), reverseBits(-u_input.d)), vec2<bool>(true, true), select(vec2<bool>(true, any(vec3<bool>(true, false, false))), vec2<bool>(true, false), true)), false);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = firstTrailingBit(min(1u, _wgslsmith_sub_u32(u_input.b.x & u_input.c.x, abs(1u))));
    let var_3 = select(select(vec4<bool>(var_0.x && true, true, all(vec3<bool>(false, var_0.x, var_0.x)) || true, !(false & var_0.x)), !(!(!vec4<bool>(false, var_0.x, var_0.x, false))), vec4<bool>(all(vec2<bool>(true, var_0.x)), true, select(var_0.x, any(vec3<bool>(var_0.x, true, false)), u_input.d <= global0.a.x), !any(vec4<bool>(var_0.x, false, true, true)))), vec4<bool>(var_0.x, any(vec3<bool>(true, false, var_0.x)), all(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x)), true), func_1(vec4<bool>(false, (32157i >> (u_input.a % 32u)) >= ~(-45079i), 0u > _wgslsmith_add_u32(global3[_wgslsmith_index_u32(6985u, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46429u, 19u)], 19u)]), !func_1(vec4<bool>(false, var_0.x, var_0.x, var_0.x), 2147483647i).x), _wgslsmith_add_i32(firstTrailingBit(-1i), 42185i)).x);
    let var_4 = (var_0.x && !(!func_1(var_3, global0.b).x)) | !select(_wgslsmith_f_op_f32(sign(var_1)) <= _wgslsmith_f_op_f32(-var_1), all(vec2<bool>(var_0.x, true)), var_0.x);
    let var_5 = var_1;
    var var_6 = -382f;
    var var_7 = Struct_2(~u_input.b, Struct_1(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global4.x), vec2<i32>(global0.b, global0.b), vec2<i32>(-25804i, global4.x)), global0.a), -1i >> (~global2.x % 32u)), ~_wgslsmith_mult_vec4_i32(min(vec4<i32>(2147483647i, 0i, -1i, global4.x) << (vec4<u32>(global2.x, global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(88319u, 19u)], 19u)], 22019u) % vec4<u32>(32u)), select(vec4<i32>(-61i, -1i, global0.a.x, global4.x), vec4<i32>(37308i, 57490i, global0.a.x, -6933i), var_4)), vec4<i32>(-1i) * -vec4<i32>(global4.x, -14314i, global4.x, global0.a.x)), func_2(Struct_1(abs(vec2<i32>(global0.a.x, u_input.d)), 1i)).b, i32(-1i) * -2147483647i);
    global0 = func_2(func_2(func_2(global1[_wgslsmith_index_u32(0u, 1u)]).b).b).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1 - var_5));
}

