struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 25425u;

var<private> global1: vec4<f32> = vec4<f32>(-989f, -549f, 1505f, 536f);

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, true, true));

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(max(u_input.c, ~min(1549i, u_input.c)), 58364i, _wgslsmith_dot_vec2_i32(firstTrailingBit(min(vec2<i32>(2175i, u_input.c), vec2<i32>(u_input.c, 0i))), -min(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-24423i, u_input.c))), u_input.c), vec4<i32>(u_input.c, u_input.c | -7632i, u_input.c, max(_wgslsmith_add_i32(select(-1i, 2147483647i, false), 15644i), u_input.c)));
    var var_1 = vec4<i32>(_wgslsmith_div_i32(reverseBits(u_input.c), select(49543i, _wgslsmith_sub_i32(-2147483647i, -24854i), select(global3.a.x, arg_1.a.x, 15775i != u_input.c))), i32(-1i) * -1i, u_input.c, -1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 902f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 234f) * -716f)), _wgslsmith_f_op_f32(ceil(987f)))));
    let var_3 = arg_2;
    global2 = select(!select(vec3<bool>(true, global2.x, select(false, false, false)), vec3<bool>(select(var_3.a.x, false, global2.x), true, true), 425f > global1.x), !vec3<bool>(_wgslsmith_f_op_f32(global1.x - -1000f) < _wgslsmith_f_op_f32(min(global1.x, 468f)), (var_0.x != 0i) && global2.x, true), global3.a);
    return !arg_1.a;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = vec2<bool>(select(all(global3.a.xy), true, all(!(!vec4<bool>(true, false, global3.a.x, global3.a.x)))), false);
    let var_1 = Struct_1(select(select(select(func_3(vec4<bool>(global2.x, true, global2.x, true), global4[_wgslsmith_index_u32(u_input.a, 14u)], Struct_1(global3.a), global2.x), vec3<bool>(var_0.x, true, var_0.x), func_3(vec4<bool>(global2.x, false, var_0.x, true), Struct_1(vec3<bool>(true, true, var_0.x)), global4[_wgslsmith_index_u32(4294967295u, 14u)], var_0.x).x), vec3<bool>(true, true, var_0.x), global3.a), global3.a, vec3<bool>(true, true, global2.x && func_3(vec4<bool>(global2.x, true, false, global2.x), Struct_1(global3.a), global4[_wgslsmith_index_u32(13559u, 14u)], true).x)));
    var var_2 = var_1;
    var var_3 = Struct_1(var_2.a);
    let var_4 = global4[_wgslsmith_index_u32(4294967295u, 14u)];
    return Struct_1(vec3<bool>(true, select(!func_3(vec4<bool>(true, true, global2.x, false), Struct_1(vec3<bool>(var_2.a.x, true, false)), Struct_1(vec3<bool>(true, var_1.a.x, var_4.a.x)), var_1.a.x).x, var_2.a.x, !all(global3.a.zy)), true));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = -108f;
    let var_1 = Struct_1(global3.a);
    var var_2 = u_input.d.zwz;
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.x, _wgslsmith_mod_u32(abs(_wgslsmith_add_u32(firstTrailingBit(41861u), 1u)), ~var_2.x >> (~_wgslsmith_mod_u32(var_2.x, 37810u) % 32u))), 14u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-574f, var_0, -147f, -465f)));
    return vec2<u32>(~(14547u << (u_input.a % 32u)), var_2.x);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_u32(func_4(func_2(~vec3<u32>(30143u, 0u, 44028u)), countOneBits(u_input.d.x), func_2(min(vec3<u32>(u_input.d.x, 1u, u_input.d.x), vec3<u32>(27035u, u_input.b, 66535u))), func_2(u_input.d.zxw)), ~vec2<u32>(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4369u, 640u, 30097u, 54479u), u_input.d)), 0u));
    global2 = vec3<bool>(!all(vec4<bool>(any(vec4<bool>(true, global2.x, true, global3.a.x)), false, any(vec4<bool>(global2.x, false, false, global2.x)), any(global3.a))), global2.x, firstTrailingBit(19288i) != -1i);
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-68514i, reverseBits(u_input.c << (1u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-44137i, u_input.c) ^ ~vec2<i32>(u_input.c, u_input.c), -vec2<i32>(u_input.c, 1i) & _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 15197i), vec2<i32>(u_input.c, u_input.c))), _wgslsmith_clamp_i32(1i, u_input.c, _wgslsmith_mult_i32(~(-27165i), u_input.c))), ~(_wgslsmith_div_vec4_i32(vec4<i32>(72550i, u_input.c, u_input.c, u_input.c) >> (u_input.d % vec4<u32>(32u)), -vec4<i32>(50054i, u_input.c, 31059i, u_input.c)) << (~(vec4<u32>(var_0.x, 1u, var_0.x, u_input.a) << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(i32(-1i) * -1i), _wgslsmith_div_i32(2147483647i, -28366i)), u_input.c, -1i, 0i));
    var var_2 = Struct_1(!global3.a);
    let var_3 = firstTrailingBit(var_1.yw);
    return Struct_1(global3.a);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -(~(~u_input.c)) > firstLeadingBit(-(~u_input.c) << (u_input.d.x % 32u));
    var var_1 = func_1();
    var var_2 = all(vec3<bool>(any(arg_0.a.yy), !(!(arg_0.a.x == false)), all(!vec4<bool>(true, true, var_0, global2.x))));
    let var_3 = Struct_1(var_1.a);
    var var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -401f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-263f, _wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -746f, _wgslsmith_f_op_f32(f32(-1f) * -1494f), global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1063f, global1.x, 1486f, 147f)))), !any(select(vec2<bool>(var_1.a.x, true), global2.xz, var_3.a.x))))));
    return func_2(~max(vec3<u32>(_wgslsmith_clamp_u32(1u, 0u, 0u), u_input.d.x, countOneBits(0u)), abs(vec3<u32>(u_input.b, u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1());
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -382f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.d, u_input.b, _wgslsmith_f_op_f32(exp2(global1.x)), 4294967295u);
}

