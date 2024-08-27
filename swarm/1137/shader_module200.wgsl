struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: vec3<i32>;

var<private> global3: array<f32, 30>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> u32 {
    global2 = _wgslsmith_mod_vec3_i32(u_input.a, ~(u_input.a | u_input.a));
    return ~abs(7675u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> bool {
    global3 = array<f32, 30>();
    global3 = array<f32, 30>();
    var var_0 = arg_0.x;
    global0 = global1.x;
    var var_1 = min(firstTrailingBit(u_input.a), max(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, arg_3.b.a.x, -2204i), abs(vec3<i32>(global2.x, 6502i, -1i))), arg_3.b.a));
    return false;
}

fn func_2() -> Struct_1 {
    global2 = ~(~max(vec3<i32>(u_input.a.x, -2147483647i, global2.x), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, u_input.c, 1i), u_input.a >> (vec3<u32>(42730u, 109182u, 27178u) % vec3<u32>(32u)), -u_input.a)));
    let var_0 = -20286i << (firstTrailingBit(~firstTrailingBit(~1u)) % 32u);
    global1 = !(!vec3<bool>(global1.x, !func_3(vec2<u32>(28089u, 79578u), vec4<u32>(10496u, 21720u, 4294967295u, 45063u), 41282u, Struct_2(var_0, Struct_1(u_input.a, vec2<i32>(global2.x, u_input.a.x)), vec2<i32>(global2.x, 0i))), false));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(43879u, 71415u)), 30u)]));
    let var_2 = Struct_2(global2.x, Struct_1(u_input.a, vec2<i32>(~global2.x >> (abs(1u) % 32u), 1i)), vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, firstLeadingBit(2147483647i), _wgslsmith_clamp_i32(~(-17358i), ~15820i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, -2147483647i, global2.x), vec4<i32>(-2147483647i, global2.x, var_0, u_input.a.x)))), max(reverseBits(_wgslsmith_add_i32(global2.x, -24741i)), _wgslsmith_add_i32(global2.x, global2.x) & _wgslsmith_clamp_i32(26974i, 0i, 31033i))));
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_1 {
    global1 = select(select(!select(!arg_3.yyz, vec3<bool>(arg_2.x, global1.x, true), !arg_3.x), vec3<bool>(!any(arg_3), !arg_2.x, arg_3.x), arg_2), vec3<bool>(arg_1.a.x <= arg_0.b.x, true, any(vec4<bool>(select(true, true, false), true, all(vec2<bool>(true, global1.x)), any(vec2<bool>(arg_3.x, arg_3.x))))), arg_3.x);
    let var_0 = countOneBits(_wgslsmith_mult_u32(1u, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 6731u), vec4<u32>(8647u, 0u, 38719u, 42815u)), 1u, all(vec2<bool>(true, false)))));
    var var_1 = Struct_2(global2.x, Struct_1(abs(arg_0.a), arg_1.a.yx), u_input.a.yz);
    global3 = array<f32, 30>();
    var var_2 = firstTrailingBit(var_1.b.a);
    return var_1.b;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2209f))))) + -918f);
    global0 = global1.x;
    let var_1 = arg_2;
    let var_2 = vec4<u32>(min(firstLeadingBit(arg_0.x), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.x, arg_0.x), arg_0))), arg_0.x, abs(arg_0.x), ~(~reverseBits(arg_0.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-954f - var_0))), 142f), vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(exp2(var_0)))))), vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(33649u, 30u)] * -794f), global3[_wgslsmith_index_u32(~(~var_2.x), 30u)]), global1.zz));
    return Struct_2(4735i, func_4(func_4(Struct_1(vec3<i32>(arg_2.a, 18211i, global2.x), vec2<i32>(arg_3.x, 0i)), Struct_1(vec3<i32>(-1i, global2.x, 971i), vec2<i32>(0i, 0i)), !vec3<bool>(global1.x, global1.x, global1.x), vec4<bool>(true, !global1.x, global1.x, true | global1.x)), arg_2.b, !select(select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(false, global1.x, false), !vec3<bool>(false, true, global1.x)), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), vec4<bool>(false, global1.x, global1.x, global1.x))), -vec2<i32>(max(2147483647i, global2.x >> (var_2.x % 32u)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(25002u, 40352u, 3380u), abs(vec3<u32>(2999u, 52898u, 25173u))), reverseBits(~vec3<u32>(0u, 4294967295u, 76975u)), _wgslsmith_mod_vec3_u32(vec3<u32>(2303u, 1u, 67307u), vec3<u32>(1u, 1u, 1u))), select(vec3<u32>(1u, func_1(), firstTrailingBit(1u)), abs(select(vec3<u32>(4294967295u, 16823u, 44821u), vec3<u32>(70168u, 53719u, 50520u), vec3<bool>(global1.x, global1.x, true))), !(false && global1.x))), func_4(func_2(), func_2(), !select(vec3<bool>(global1.x, global1.x, false), !vec3<bool>(global1.x, global1.x, true), global1.x == true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global1.x, false, false, global1.x), true), vec4<bool>(true, true, select(global1.x, global1.x, false), global1.x && true))), Struct_2(u_input.c, Struct_1(~(-u_input.a), ~_wgslsmith_sub_vec2_i32(global2.yx, u_input.a.xz)), _wgslsmith_clamp_vec2_i32(max(u_input.a.yx >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(global2.zy, u_input.a.zx)), ~reverseBits(vec2<i32>(-21979i, global2.x)), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, 24935i), 2147483647i))), ~(~firstTrailingBit(~vec4<i32>(-2147483647i, global2.x, u_input.a.x, u_input.c))));
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(13509u, 19918u, ~20449u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 11971u, 0u), vec3<u32>(0u, 0u, 1u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(27037u, 4294967295u, 28539u, 1u), max(vec4<u32>(0u, 0u, 0u, 68876u), vec4<u32>(19348u, 35621u, 69834u, 0u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<u32>(~(~firstTrailingBit(50830u)), ~1465u, 14333u, ~1u));
    let var_2 = i32(-1i) * -23350i;
    global1 = !(!(!vec3<bool>(!global1.x, true, global1.x && global1.x)));
    let var_3 = var_1.x << (var_1.x % 32u);
    global0 = true & global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 4409u, var_1.x, var_3), vec4<u32>(34405u, 43943u, var_3, 1u)), 17749u), 30u)])), ~(~(~4294967295u)) & abs(~(~var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(546f, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_3, 30u)])))) - -539f), global3[_wgslsmith_index_u32(~var_1.x, 30u)], 179f, global3[_wgslsmith_index_u32(~(~(~43856u)), 30u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(var_1.x, 30u)]) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(var_3, 30u)], -504f, -1698f), vec3<f32>(400f, global3[_wgslsmith_index_u32(var_3, 30u)], -835f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1243f, global3[_wgslsmith_index_u32(var_3, 30u)], -1000f)))), select(select(vec3<bool>(true, global1.x, false), !vec3<bool>(false, false, global1.x), !vec3<bool>(global1.x, false, global1.x)), select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, true, false), false), !vec3<bool>(true, true, global1.x), all(global1.yz)), !(!global1.x)))));
}

