struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)));

var<private> global1: vec3<f32> = vec3<f32>(-1000f, 837f, -934f);

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, ~26533i, 1i), reverseBits(countOneBits(vec3<i32>(u_input.e, -2147483647i, -2147483647i) & vec3<i32>(u_input.e, 1i, 2147483647i)))), u_input.e);
    global2 = Struct_1(!(!(!select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_1.a, vec2<bool>(global3.a.x, true)))));
    var var_1 = _wgslsmith_mod_vec2_i32(var_0, var_0);
    let var_2 = vec2<bool>(arg_1.a.x, true);
    global2 = Struct_1(vec2<bool>(true, true));
    return min(_wgslsmith_sub_u32(arg_2, 0u) >> (25673u % 32u), ~(~arg_2));
}

fn func_2(arg_0: vec4<f32>) -> vec3<i32> {
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(38270u, 0u), 8u)];
    var var_0 = abs(1u) << (u_input.c % 32u);
    var var_1 = -1000f;
    var_0 = func_3(global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(0u, 18u)], 0u);
    let var_2 = Struct_1(vec2<bool>(global2.a.x, all(!select(vec3<bool>(global3.a.x, global2.a.x, global2.a.x), vec3<bool>(global3.a.x, false, true), true))));
    return select(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(u_input.e, 10968i, u_input.e)) >> (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, 1u, u_input.c)), reverseBits(vec3<u32>(1u, u_input.a.x, u_input.b))) % vec3<u32>(32u)), ~(~vec3<i32>(23212i, -5541i, u_input.e)) << (_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.b, 4294967295u, 78337u)), select(vec3<u32>(4294967295u, u_input.d.x, 1u), vec3<u32>(u_input.d.x, u_input.c, 2088u), vec3<bool>(true, global2.a.x, false))) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(abs(~vec3<i32>(u_input.e, u_input.e, u_input.e)), max(vec3<i32>(0i, 0i, u_input.e), vec3<i32>(u_input.e, 4579i, 16334i)) << (countOneBits(vec3<u32>(u_input.a.x, u_input.b, 66503u)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, -40275i, 1i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(9197i, 1i, 3541i), vec3<i32>(0i, u_input.e, u_input.e)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, u_input.e, -1i), select(vec3<i32>(47442i, u_input.e, u_input.e), vec3<i32>(u_input.e, u_input.e, u_input.e), var_2.a.x)))), var_2.a.x);
}

fn func_1() -> bool {
    var var_0 = global1.x;
    var var_1 = Struct_1(vec2<bool>(global3.a.x, any(global3.a)));
    var var_2 = vec2<bool>(global2.a.x, !(-613f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -322f)))));
    var var_3 = false;
    let var_4 = firstTrailingBit(vec3<i32>(-1i) * -select(func_2(vec4<f32>(global1.x, global1.x, global1.x, 421f)), ~vec3<i32>(u_input.e, u_input.e, 2147483647i), global3.a.x));
    return any(vec4<bool>(true, true, all(!vec4<bool>(var_2.x, true, true, var_2.x)), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    let var_0 = global3.a.x || true;
    var var_1 = select(select(select(select(!vec4<bool>(global3.a.x, var_0, var_0, true), select(vec4<bool>(var_0, global2.a.x, true, var_0), vec4<bool>(true, false, true, false), vec4<bool>(global2.a.x, global3.a.x, var_0, false)), func_1()), !select(vec4<bool>(true, global3.a.x, global3.a.x, false), vec4<bool>(false, false, true, false), vec4<bool>(false, global3.a.x, var_0, false)), vec4<bool>(var_0, global2.a.x, all(vec3<bool>(global2.a.x, true, var_0)), select(true, var_0, global2.a.x))), select(!select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true), vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x)), vec4<bool>(!global3.a.x, global2.a.x, -31460i <= u_input.e, true), vec4<bool>(any(vec4<bool>(true, true, global3.a.x, false)), u_input.e < 32835i, u_input.e > 21934i, all(vec4<bool>(false, global3.a.x, false, true)))), global2.a.x), vec4<bool>(true, true, true, global2.a.x && !global2.a.x), any(vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.d.x), u_input.a) < ~37245u, (u_input.e > 0i) || all(vec2<bool>(var_0, global3.a.x)), true, global2.a.x)));
    global3 = Struct_1(vec2<bool>(all(select(!vec2<bool>(global3.a.x, var_0), global2.a, select(global3.a, vec2<bool>(false, true), var_1.xz))), true));
    global3 = global4[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(u_input.b, select(~u_input.c, firstTrailingBit(u_input.a.x), false)), u_input.b, any(select(!vec4<bool>(var_1.x, false, global3.a.x, false), select(!vec4<bool>(global3.a.x, false, false, var_1.x), vec4<bool>(var_1.x, true, true, false), !vec4<bool>(var_0, global3.a.x, true, true)), global2.a.x))), 18u)];
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(~10847u, ~u_input.d.x), u_input.d)), _wgslsmith_mult_vec2_u32(~(vec2<u32>(14533u, u_input.b) << ((u_input.a >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))), ~(~vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u))))), 18u)];
    let var_3 = !var_1.zyy;
    var var_4 = global4[_wgslsmith_index_u32(u_input.d.x, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(max(vec2<i32>(_wgslsmith_add_i32(u_input.e, 48867i), firstLeadingBit(u_input.e)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(u_input.e, -2147483647i, u_input.e)), -2147483647i)), -vec2<i32>(0i, 1i) << (vec2<u32>(reverseBits(0u), 0u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(-vec2<i32>(abs(u_input.e), _wgslsmith_div_i32(2147483647i, -28539i)), func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(765f, global1.x, -134f, -1211f) + vec4<f32>(global1.x, global1.x, -998f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 646f, -156f, -1320f))))).zz), u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(490f, global1.x, 1000f, global1.x)))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, _wgslsmith_f_op_f32(round(-1723f)), _wgslsmith_f_op_f32(-global1.x), global1.x)))), vec2<i32>((21883i ^ _wgslsmith_add_i32(u_input.e, -28769i)) | (u_input.e << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 54921u, 21653u), vec3<u32>(u_input.b, u_input.d.x, 22545u)) % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.e, 1i), vec3<i32>(-35336i, 42479i, u_input.e)), vec3<i32>(-7000i, u_input.e, u_input.e)), vec3<i32>(-1i) * -vec3<i32>(18699i, -1i, -1i))));
}

