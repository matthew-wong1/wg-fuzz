struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(4294967295u, 28340u, vec4<u32>(11172u, 1u, 22365u, 597u), vec3<u32>(1u, 72012u, 18909u)), 29175i, Struct_1(1i, -57179i, vec4<f32>(1178f, -882f, -594f, 756f), -429f), 0i);

var<private> global1: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(5745u, 100470u, 4294967295u, 17929u), vec4<u32>(58658u, 11890u, 34432u, 4294967295u), vec4<u32>(46239u, 1u, 70542u, 4294967295u), vec4<u32>(1u, 3686u, 0u, 93162u), vec4<u32>(4294967295u, 4294967295u, 21766u, 48474u), vec4<u32>(33044u, 0u, 103930u, 0u), vec4<u32>(20675u, 1u, 0u, 14869u), vec4<u32>(1u, 17841u, 1u, 75121u), vec4<u32>(68692u, 56866u, 23100u, 0u), vec4<u32>(9096u, 0u, 15157u, 0u), vec4<u32>(4294967295u, 5086u, 27818u, 4294967295u));

var<private> global2: Struct_2 = Struct_2(Struct_1(-1i, -32018i, vec4<f32>(-136f, -294f, -821f, 329f), 1000f), Struct_1(10049i, i32(-2147483648), vec4<f32>(-208f, -1821f, -837f, 2679f), -967f), 0u, vec4<bool>(false, true, true, false));

var<private> global3: vec3<u32> = vec3<u32>(33289u, 49447u, 4294967295u);

var<private> global4: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool) -> i32 {
    global4 = ~(firstLeadingBit(firstTrailingBit(u_input.a.x)) & _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(global0.a.c.xww, vec3<u32>(0u, global3.x, 6183u)))) & firstTrailingBit(~global3.x);
    global2 = Struct_2(global0.c, global0.c, ~(62526u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 20160u, 4294967295u), vec3<u32>(44705u, u_input.a.x, global3.x)) % 32u)), vec4<bool>(arg_2, true, false, all(!vec2<bool>(false, arg_2))));
    var var_0 = global0.a.b;
    var var_1 = global2.d.xwy;
    var var_2 = Struct_4(global0.a, select(-9981i, ~1i, global2.b.c.x != _wgslsmith_f_op_f32(sign(462f))), global2.a, _wgslsmith_add_i32((-global0.b << (~u_input.a.x % 32u)) & -(-1i ^ arg_0), -_wgslsmith_div_i32(-2147483647i, -2147483647i >> (1u % 32u))));
    return 25291i;
}

fn func_2() -> i32 {
    global2 = Struct_2(Struct_1(5083i, -func_3(-41886i ^ global0.d, true, select(global2.d.x, global2.d.x, global2.d.x)), global2.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-391f * global0.c.d), -1685f, global2.d.x)) - _wgslsmith_f_op_f32(-147f - _wgslsmith_f_op_f32(exp2(global0.c.d))))), global2.b, ~global0.a.d.x, global2.d);
    var var_0 = Struct_2(global0.c, Struct_1(-1i, _wgslsmith_add_i32(global2.b.a, global2.b.b) << (reverseBits(_wgslsmith_dot_vec2_u32(global0.a.d.zy, global3.xx)) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-499f, global2.b.d, 1000f, _wgslsmith_f_op_f32(global0.c.c.x + 792f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1448f) - _wgslsmith_f_op_f32(global0.c.d * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 38177u, global2.d);
    let var_1 = Struct_4(global0.a, firstLeadingBit(~(global2.b.b >> (firstTrailingBit(u_input.a.x) % 32u))), global2.a, ~(-2147483647i) | -_wgslsmith_mult_i32(-6209i, var_0.b.a));
    var var_2 = var_0.b;
    var var_3 = var_1;
    return var_3.b;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(881f * -1597f)));
    global4 = ~global0.a.b;
    global3 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x << (0u % 32u), 0u)), ~(~(~global0.a.d))), select(select(global0.a.c.wyz, vec3<u32>(~1u, _wgslsmith_mult_u32(u_input.a.x, 40350u), global3.x), false), global0.a.d << (firstLeadingBit(global0.a.d) % vec3<u32>(32u)), select(!select(global2.d.wzw, global2.d.xzz, global2.d.wyy), select(global2.d.yyz, vec3<bool>(true, false, global2.d.x), select(global2.d.wzy, vec3<bool>(global2.d.x, global2.d.x, global2.d.x), global2.d.x)), (801u >> (global3.x % 32u)) < ~global0.a.b)));
    let var_1 = global2.a;
    var var_2 = func_2();
    return Struct_2(Struct_1(-(i32(-1i) * -10512i), var_1.a, arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1021f, _wgslsmith_f_op_f32(select(1264f, -1454f, false)))) - _wgslsmith_f_op_f32(f32(-1f) * -1495f))), global2.b, 85747u, vec4<bool>(true, false, !(!any(vec2<bool>(false, global2.d.x))), select(global2.d.x, !global2.d.x, any(vec4<bool>(global2.d.x, global2.d.x, false, true))) & true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_i32(~19103i, global2.a.b), firstTrailingBit(-55207i), global2.a);
    let var_1 = countOneBits(firstLeadingBit(~abs(var_0.c)));
    let var_2 = global2.d.x;
    global4 = ~(~10418u);
    global0 = Struct_4(global0.a, func_2(), var_0.b, -(~(-(global0.d ^ 698i))));
    let var_3 = true;
    global4 = _wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(30465u));
    global0 = Struct_4(Struct_3(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global0.a.c << (vec4<u32>(28381u, 0u, var_0.c, var_1) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(55945u, 11u)], vec4<u32>(29712u, 43967u, global2.c, global0.a.d.x))), min(u_input.a.x, 1u)), _wgslsmith_mult_u32(var_1, ~countOneBits(u_input.a.x)), global1[_wgslsmith_index_u32(50071u, 11u)], ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, var_0.c, 27518u), vec3<u32>(var_0.c, global2.c, u_input.a.x))), -12764i, var_0.b, _wgslsmith_add_i32(-var_0.b.a, -(~1953i)));
    let var_4 = Struct_4(global0.a, -39289i ^ (var_0.a.a << (min(~global2.c, _wgslsmith_mod_u32(global2.c, 0u)) % 32u)), func_1(2147483647i, 78387i, Struct_1(firstLeadingBit(-42056i), abs(var_0.a.a) & 1i, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(651f, global2.a.c.x, var_0.a.d, global2.a.c.x))), -161f)).a, func_1(countOneBits(~(~(-1921i))), _wgslsmith_div_i32(~select(0i, var_0.a.a, var_0.d.x), countOneBits(-2147483647i)), var_0.b).b.a);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.d, select(vec3<i32>(-1i) * -(~vec3<i32>(2147483647i, -2147483647i, global0.b)), abs(abs(abs(vec3<i32>(2147483647i, var_4.c.a, -29474i)))), vec3<bool>(func_1(~global0.b, -global0.d, Struct_1(1286i, global0.c.a, vec4<f32>(898f, var_4.c.c.x, var_4.c.c.x, global2.b.c.x), var_0.b.d)).d.x, true, select(global2.b.a, 0i, var_3) < 2147483647i)), var_0.b.c.yyw, ~4294967295u, firstLeadingBit(2147483647i) | _wgslsmith_mult_i32(global0.c.b << (_wgslsmith_mult_u32(u_input.a.x, var_4.a.c.x) % 32u), _wgslsmith_add_i32(global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.b, -3909i, global0.c.a), vec4<i32>(var_4.b, var_4.c.a, -10353i, global2.b.b)))));
}

