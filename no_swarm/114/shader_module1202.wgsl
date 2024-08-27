struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(20849u, 0u, 37035u, 80054u), vec4<u32>(4294967295u, 4294967295u, 1u, 4750u), vec4<u32>(0u, 34366u, 4294967295u, 3271u), vec4<u32>(4294967295u, 56070u, 34448u, 34245u), vec4<u32>(4294967295u, 16388u, 18871u, 0u), vec4<u32>(0u, 62021u, 4294967295u, 38184u), vec4<u32>(619u, 1u, 4294967295u, 1u), vec4<u32>(42121u, 6194u, 30249u, 4294967295u));

var<private> global1: vec3<bool>;

var<private> global2: u32 = 18374u;

var<private> global3: vec2<i32> = vec2<i32>(1i, 47788i);

var<private> global4: array<f32, 4>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = 36242i;
    global3 = _wgslsmith_mod_vec2_i32(reverseBits(~vec2<i32>(-2147483647i, -2147483647i)), min(vec2<i32>(-2147483647i, min(u_input.a, 0i)), vec2<i32>(31707i, ~2147483647i)));
    global4 = array<f32, 4>();
    let var_2 = Struct_3(Struct_1(0i, firstTrailingBit(-abs(vec4<i32>(1i, global3.x, global3.x, global3.x)))), ~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x ^ 0u), ~4294967295u));
    return Struct_2(!global1.x, firstTrailingBit(1i), var_2.a);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_4(arg_0.c.b, vec2<u32>(_wgslsmith_mod_u32(arg_1.b.x & ~1u, u_input.b.x), firstLeadingBit(~(~arg_2.x))), arg_1.c);
    let var_1 = firstLeadingBit(global3.x);
    var var_2 = arg_3;
    var var_3 = all(select(arg_3.zx, select(!var_2.zy, vec2<bool>(all(vec2<bool>(true, global1.x)), global4[_wgslsmith_index_u32(4189u, 4u)] > 454f), any(!global1.yx)), !(!select(var_2.ww, vec2<bool>(false, false), arg_0.a))));
    let var_4 = arg_1;
    return var_0.c.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-abs(1i), _wgslsmith_clamp_i32(-2147483647i, global3.x, 2147483647i), arg_0.a), arg_0.b.zxy, arg_0.b.wxx));
    return Struct_4((~(~vec4<i32>(37357i, 0i, -18327i, u_input.a)) ^ (arg_0.b & vec4<i32>(global3.x, -35262i, global3.x, arg_0.a))) & vec4<i32>(-11600i, firstLeadingBit(53522i), _wgslsmith_add_i32(-2147483647i, firstTrailingBit(arg_0.a)), firstTrailingBit(global3.x)), abs((~vec2<u32>(u_input.b.x, u_input.b.x) & ~u_input.b.yz) ^ _wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(0u, u_input.b.x))), Struct_3(func_3(func_2(u_input.b.x), Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, global3.x), arg_0.b), ~vec2<u32>(4294967295u, u_input.b.x), Struct_3(Struct_1(u_input.a, vec4<i32>(u_input.a, u_input.a, -1i, var_0.x)), 0u)), _wgslsmith_div_vec4_u32(countOneBits(global0[_wgslsmith_index_u32(1u, 8u)]), global0[_wgslsmith_index_u32(u_input.b.x, 8u)] & vec4<u32>(28332u, 0u, 1u, u_input.b.x)), !(!vec4<bool>(global1.x, global1.x, false, true))), abs(u_input.b.x)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_1 {
    global3 = vec2<i32>(min(arg_0.a.x, -global3.x), firstLeadingBit(min(countOneBits(min(329i, arg_0.a.x)), global3.x)));
    var var_0 = ~u_input.a;
    var var_1 = arg_1.x;
    var var_2 = Struct_1((0i >> (~min(u_input.b.x, arg_0.c.b) % 32u)) | ~u_input.a, _wgslsmith_mod_vec4_i32(arg_0.a, _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.a.b.x, arg_0.a.x, _wgslsmith_clamp_i32(36261i, 2147483647i, global3.x), -arg_0.c.a.b.x), ~_wgslsmith_mult_vec4_i32(arg_0.a, vec4<i32>(u_input.a, -2147483647i, 0i, -1073i)))));
    let var_3 = _wgslsmith_sub_i32(26979i, u_input.a >> (arg_0.c.b % 32u));
    return arg_0.c.a;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1i, -(~(~global3.x))), arg_1.xy);
    var var_1 = func_5(func_4(func_3(func_2(10447u), Struct_4(-vec4<i32>(1i, -25739i, global3.x, 7460i), vec2<u32>(0u, 1u), Struct_3(Struct_1(u_input.a, vec4<i32>(u_input.a, -2147483647i, -1i, global3.x)), 0u)), vec4<u32>(u_input.b.x, 4294967295u, ~4294967295u, reverseBits(u_input.b.x)), !vec4<bool>(global1.x, global1.x, false, global1.x)), 1058f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, -1160f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(58668u, 4u)], arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1060f, 1039f, true)), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], arg_0), global4[_wgslsmith_index_u32(u_input.b.x, 4u)], global4[_wgslsmith_index_u32(~35530u, 4u)]))));
    global1 = !vec3<bool>(true, global1.x, false);
    let var_2 = select(vec3<bool>(all(select(!vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), all(vec4<bool>(true, true, true, true)), global1.x), vec3<bool>(false, global1.x, all(select(!vec3<bool>(global1.x, true, false), !vec3<bool>(false, global1.x, global1.x), !global1.x))), !(!global1.x));
    let var_3 = vec4<bool>(var_2.x, any(select(select(!vec4<bool>(false, true, global1.x, true), vec4<bool>(var_2.x, false, global1.x, true), vec4<bool>(true, true, global1.x, false)), !(!vec4<bool>(var_2.x, var_2.x, global1.x, global1.x)), vec4<bool>(all(var_2), global1.x, false, global1.x))), true, false);
    return ~firstTrailingBit(23219i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global3 = vec2<i32>(_wgslsmith_sub_i32(-2147483647i, func_1(2010f, ~vec3<i32>(0i, var_0, var_0))), global3.x ^ u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec3_u32(u_input.b, select(vec3<u32>(1u, u_input.b.x, 0u) | vec3<u32>(52513u, u_input.b.x, 5174u), vec3<u32>(34920u, u_input.b.x, 18809u) ^ u_input.b, vec3<bool>(false, global1.x, false))), abs(vec3<u32>(u_input.b.x << (4294967295u % 32u), u_input.b.x, u_input.b.x))), firstTrailingBit(min(vec4<u32>(32219u, 4294967295u, abs(1u), u_input.b.x), max(select(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 8u)], vec4<bool>(global1.x, global1.x, false, global1.x)), vec4<u32>(u_input.b.x, u_input.b.x, 84231u, u_input.b.x) << (vec4<u32>(u_input.b.x, 1u, u_input.b.x, 22936u) % vec4<u32>(32u))))), reverseBits(1u), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(71335u, 4u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], -1231f) * vec2<f32>(1000f, global4[_wgslsmith_index_u32(1u, 4u)])) * vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], global4[_wgslsmith_index_u32(0u, 4u)]))), vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], 2063f)));
}

