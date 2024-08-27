struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

var<private> global2: array<f32, 26>;

var<private> global3: u32;

var<private> global4: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(64555u, 11841u), vec2<u32>(1u, 1u), vec2<u32>(74124u, 84336u), vec2<u32>(1u, 43482u), vec2<u32>(4294967295u, 101373u), vec2<u32>(0u, 45492u), vec2<u32>(17362u, 71535u), vec2<u32>(19675u, 4294967295u), vec2<u32>(37246u, 57342u), vec2<u32>(1u, 60378u), vec2<u32>(32406u, 1u), vec2<u32>(4294967295u, 15827u), vec2<u32>(47647u, 80877u), vec2<u32>(14655u, 74857u), vec2<u32>(4294967295u, 47745u), vec2<u32>(1u, 93224u), vec2<u32>(48844u, 0u), vec2<u32>(26130u, 45166u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(44704u, 18914u), vec2<u32>(4294967295u, 61142u), vec2<u32>(4294967295u, 7043u), vec2<u32>(1060u, 4294967295u), vec2<u32>(39182u, 42694u), vec2<u32>(1u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -46653i, u_input.b.x, u_input.a.x), vec4<i32>(1i, u_input.b.x, 16716i, 81i)), -vec4<i32>(u_input.a.x, u_input.b.x, -1i, 46959i)) << (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 67342u, global1.x, global1.x), ~vec4<u32>(global1.x, global1.x, 4294967295u, 0u))) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.b.x, -17823i), vec4<i32>(-1i, -1i, 2147483647i, u_input.a.x))), -select(vec4<i32>(21397i, u_input.a.x, u_input.a.x, u_input.b.x), vec4<i32>(1i, u_input.a.x, 2147483647i, -57965i), vec4<bool>(false, false, true, false))));
    let var_1 = global1.x;
    global3 = ~(4294967295u >> (global1.x % 32u));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u >> (global1.x % 32u), ~abs(69936u)), 26u)];
    var var_2 = Struct_2(-1i, Struct_1(_wgslsmith_sub_u32(4294967295u, 1u) & global1.x, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(15591u, 26u)], _wgslsmith_f_op_f32(floor(-1270f))))), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), var_0.yz));
    return vec4<bool>(false, true | !any(select(var_2.b.b.zz, var_2.b.b.yz, var_2.b.b.x)), true, var_2.b.b.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-491f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~1u), 26u)])))));
    let var_2 = Struct_2(max(2147483647i, countOneBits(-_wgslsmith_sub_i32(-1i, u_input.b.x))), Struct_1(global1.x, func_3(), 630f), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -u_input.a.zy, ~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, 18725i), vec2<i32>(-2147483647i, arg_2.a)))));
    global1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(63548u, global1.x, arg_1.x, 65456u) << (vec4<u32>(1u, global1.x, arg_1.x, var_2.b.a) % vec4<u32>(32u)), ~vec4<u32>(global1.x, global1.x, global1.x, global1.x)), select(vec4<u32>(arg_1.x, 726u, global1.x, 56868u), _wgslsmith_div_vec4_u32(vec4<u32>(11281u, 4294967295u, arg_1.x, 4596u), vec4<u32>(47840u, var_2.b.a, 1u, 0u)), vec4<bool>(true, var_2.b.b.x, true, var_2.b.b.x))) & vec4<u32>(~6198u, ~(~1u), ~(global1.x | var_2.b.a), arg_1.x);
    global3 = 4294967295u;
    return Struct_1(arg_1.x, !(!func_3()), var_1.x);
}

fn func_1() -> u32 {
    global1 = firstTrailingBit(vec4<u32>(global1.x, ~(~(~7160u)), global1.x, global1.x ^ global1.x));
    let var_0 = Struct_3(48285i);
    let var_1 = func_2(vec2<i32>(firstTrailingBit(-30746i), u_input.a.x), ~global1.yww, var_0);
    var var_2 = func_2(abs(~u_input.a.yx), vec3<u32>(~abs(38814u), var_1.a, ~0u), var_0);
    var var_3 = ~max(u_input.a.x, firstTrailingBit(i32(-1i) * -50132i));
    return firstTrailingBit(~(~firstTrailingBit(var_1.a))) & ~countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 4294967295u), abs(global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(0u, global1.x, 37987u, func_1() ^ global1.x);
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(52111u, 26u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.x, 26u)], 706f) - global2[_wgslsmith_index_u32(global1.x, 26u)])) - vec2<f32>(global2[_wgslsmith_index_u32(select(max(15566u, global1.x), abs(21351u), true), 26u)], global2[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1440f - 1900f))), -851f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 199f)))))))), any(vec4<bool>(true, false, !any(vec2<bool>(false, false)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.xw, _wgslsmith_add_vec3_u32(global1.wzw, vec3<u32>(_wgslsmith_mult_u32(0u, 1u), 23672u, 19802u)) & ~abs(global1.wzy), ~u_input.a, _wgslsmith_add_vec2_u32(~firstTrailingBit(global4[_wgslsmith_index_u32(global1.x | 65813u, 25u)]), global4[_wgslsmith_index_u32(9737u, 25u)] & vec2<u32>(~77948u, 1u)));
}

