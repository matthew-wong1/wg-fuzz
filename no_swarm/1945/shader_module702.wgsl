struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(0i, 2147483647i, -4583i, 0i)), false);

var<private> global1: i32 = -1i;

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<i32>(-1i, -1i, 1i, 1i)), true), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<i32>(1i, 1i, 58258i, 51216i)), true), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<i32>(-1i, -28521i, 2147483647i, -26607i)), true), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<i32>(-1i, 2147483647i, 2147483647i, 1077i)), false), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<i32>(-37212i, 25896i, -1i, 8498i)), false), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(39700i, i32(-2147483648), 0i, -37999i)), false), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(-32889i, -39300i, 36196i, 0i)), false), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<i32>(-18377i, i32(-2147483648), 52770i, -7189i)), true), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<i32>(-11518i, 23463i, 1i, i32(-2147483648))), false), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(-11145i, -18151i, 0i, -1i)), false), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<i32>(-31856i, -15021i, 0i, 2147483647i)), false), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<i32>(-32905i, -35562i, 2147483647i, -29514i)), true), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), i32(-2147483648), 65959i, 36557i)), true), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<i32>(2147483647i, -2964i, 1i, 2147483647i)), false), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<i32>(-1i, 7565i, i32(-2147483648), -48506i)), true), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<i32>(-18277i, 0i, 2147483647i, -173i)), false), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<i32>(-21480i, 13005i, 13650i, 0i)), true), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<i32>(29668i, -1i, 357i, -12980i)), false), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<i32>(1i, -1i, 2147483647i, -57251i)), true), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(-20127i, 0i, -727i, i32(-2147483648))), false), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<i32>(i32(-2147483648), -1815i, -22387i, 22939i)), true), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<i32>(-1i, -10151i, -9934i, 0i)), true), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), -24968i, -6640i, -1i)), true), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<i32>(-9568i, 2147483647i, 2147483647i, 1i)), true), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<i32>(0i, 1i, 7741i, 1i)), true), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<i32>(-1823i, -41703i, -21167i, -45913i)), false), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(-1i, -27165i, -61504i, -1i)), false), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<i32>(0i, 1i, -60661i, 55258i)), false), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<i32>(1i, -15704i, -3399i, 0i)), true), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<i32>(32024i, 8207i, -38446i, -1i)), false));

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(vec3<bool>((~u_input.c << (countOneBits(1u) % 32u)) <= _wgslsmith_clamp_u32(min(u_input.c, u_input.b), u_input.a >> (u_input.b % 32u), ~u_input.a), true, true | arg_1), global0.a.b);
    var var_1 = arg_2;
    var var_2 = Struct_2(var_0, true);
    var var_3 = firstLeadingBit(~u_input.a);
    let var_4 = arg_2;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-661f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1753f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(143f + 685f))))))));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2226f) * 677f)) + -1878f));
    var var_1 = Struct_1(vec3<bool>(837f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * -1263f), false, _wgslsmith_f_op_f32(func_3(global0.a.b.zzz, true, global0.a)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global0.a.b.zwz, false, global0.a))))), global0.a.b & ~(-(~global0.a.b)));
    var var_2 = ~(arg_0 | reverseBits(83260u));
    global2 = any(var_1.a.xx);
    return max(u_input.d.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i >> (firstTrailingBit(48348u) % 32u)), firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(global0.a.b.x, global0.a.b.x), -var_1.b.yx))));
}

fn func_1(arg_0: vec4<i32>) -> vec2<i32> {
    global2 = !any(global0.a.a);
    global3 = array<Struct_2, 30>();
    let var_0 = Struct_2(Struct_1(!global0.a.a, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~arg_0, vec4<i32>(arg_0.x, -11869i, u_input.d.x, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(92472i, global0.a.b.x, 5429i, 30072i), vec4<i32>(37596i, u_input.d.x, arg_0.x, u_input.d.x)))), global0.a.a.x);
    let var_1 = Struct_2(global0.a, var_0.a.a.x);
    var var_2 = var_1.b;
    return func_2(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-select(global0.a.b, min(countOneBits(vec4<i32>(1i, u_input.d.x, u_input.d.x, -31106i)), vec4<i32>(u_input.d.x, -11474i, 6983i, u_input.d.x)), !select(vec4<bool>(global0.a.a.x, false, false, global0.a.a.x), vec4<bool>(false, false, global0.b, true), global0.a.a.x)));
    global1 = var_0.x;
    global2 = any(select(global0.a.a.zz, !select(vec2<bool>(false, false), !vec2<bool>(global0.a.a.x, global0.a.a.x), global0.a.a.zy), select(vec2<bool>(true, true), vec2<bool>(global0.a.a.x || false, true), !vec2<bool>(true, global0.b))));
    var var_1 = ~(~vec2<u32>(abs(0u), u_input.a));
    var var_2 = u_input.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(485f, 342f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-654f, -1266f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 172f), vec2<f32>(-1000f, 653f), vec2<bool>(false, false)))))))));
    global0 = global3[_wgslsmith_index_u32(var_1.x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1150f + var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(208f)))) + var_3.x)), _wgslsmith_f_op_f32(-var_3.x), ~(countOneBits(select(vec4<u32>(0u, u_input.a, u_input.b, 0u), vec4<u32>(32581u, 0u, 13869u, 29343u), vec4<bool>(global0.b, false, global0.b, global0.a.a.x))) >> (abs(vec4<u32>(var_1.x, 11636u, 111533u, 0u)) % vec4<u32>(32u))), -1047f);
}

