struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(0u, 45060u, 3142u, 163u);

var<private> global1: array<Struct_1, 17>;

var<private> global2: bool = false;

var<private> global3: i32;

var<private> global4: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-422f, 169f, -1321f, -219f), vec4<f32>(629f, 630f, -226f, -380f), vec4<f32>(-170f, -2181f, -317f, 377f), vec4<f32>(-1000f, -460f, 1274f, -261f), vec4<f32>(131f, -972f, 1498f, 471f), vec4<f32>(1000f, -750f, 797f, -1667f), vec4<f32>(-892f, -538f, -1635f, -243f), vec4<f32>(436f, 876f, -484f, -168f), vec4<f32>(-840f, 446f, -142f, 2101f), vec4<f32>(797f, 609f, 360f, 234f), vec4<f32>(1535f, -1266f, -655f, -888f), vec4<f32>(1014f, 1303f, -1000f, -707f), vec4<f32>(-774f, 129f, 1000f, -1570f), vec4<f32>(-1382f, -812f, 167f, -1027f), vec4<f32>(1474f, -720f, 533f, -789f), vec4<f32>(-946f, 510f, -2121f, -392f), vec4<f32>(178f, -348f, 911f, 1032f), vec4<f32>(-500f, -323f, 2395f, -1272f), vec4<f32>(-388f, -515f, 220f, -372f), vec4<f32>(1884f, 624f, 1212f, 1286f), vec4<f32>(2032f, -670f, 661f, 1713f), vec4<f32>(-569f, 1265f, 342f, 779f), vec4<f32>(938f, -707f, -1878f, 795f), vec4<f32>(496f, 177f, -651f, -1282f), vec4<f32>(814f, 1397f, -128f, -506f), vec4<f32>(629f, 385f, 551f, -721f), vec4<f32>(-1479f, -412f, -1869f, 1246f), vec4<f32>(-107f, 1301f, -2742f, -2014f), vec4<f32>(-1586f, -250f, 773f, 1346f), vec4<f32>(1531f, 1719f, -929f, -1564f), vec4<f32>(-494f, 1011f, -267f, -321f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))))), arg_0.b, 57004u, _wgslsmith_dot_vec2_i32(-select(abs(arg_2), abs(vec2<i32>(arg_1.d, -51154i)), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), _wgslsmith_div_vec2_i32(firstLeadingBit(~vec2<i32>(arg_1.d, u_input.c)), vec2<i32>(-arg_1.d, ~(-1181i)))));
    global0 = array<u32, 4>();
    var var_1 = ~abs(_wgslsmith_mult_vec2_u32(u_input.a.zz, min(u_input.a.zx, u_input.d.yx))) >> (_wgslsmith_div_vec2_u32(~reverseBits(abs(vec2<u32>(96250u, var_0.b))), vec2<u32>(firstTrailingBit(0u), arg_0.b)) % vec2<u32>(32u));
    let var_2 = vec2<u32>(u_input.d.x, abs(2589u) ^ firstTrailingBit(_wgslsmith_mod_u32(countOneBits(var_0.c), arg_1.b)));
    let var_3 = u_input.b.ywx;
    return 53490u;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool) -> u32 {
    global3 = 6063i;
    var var_0 = global1[_wgslsmith_index_u32(~0u, 17u)];
    let var_1 = _wgslsmith_mod_vec2_i32(u_input.b.zy, vec2<i32>(u_input.c, u_input.c));
    global0 = array<u32, 4>();
    var var_2 = Struct_1(arg_1, func_3(global1[_wgslsmith_index_u32(select(reverseBits(u_input.a.x) & _wgslsmith_div_u32(19285u, arg_0), ~_wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.d.xx), all(vec4<bool>(true, false, true, arg_2))), 17u)], Struct_1(1310f, arg_0, var_0.b << (71459u % 32u), -(-1i << (arg_0 % 32u))), vec2<i32>(var_1.x, ~49541i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c, 4u)], 31u)]) * global4[_wgslsmith_index_u32(~arg_0, 31u)])))), abs(_wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.a.x, 0u), arg_0)), 0i);
    return u_input.d.x;
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(arg_0.x, ~_wgslsmith_mult_u32(func_2(u_input.a.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_0.x < arg_0.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), firstTrailingBit(1u))), 4294967295u >> ((~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.d.x) & u_input.d.x) % 32u), _wgslsmith_dot_vec3_i32(u_input.b.zyz, ~(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))) >> (countOneBits(~(u_input.a.x >> (u_input.d.x % 32u))) % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f)), var_0.b, global0[_wgslsmith_index_u32(abs(~((global0[_wgslsmith_index_u32(var_0.c, 4u)] & global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) >> (u_input.a.x % 32u))), 4u)], 0i);
    let var_2 = 0u;
    let var_3 = var_0;
    var var_4 = var_0;
    return vec2<bool>(false, (~u_input.c ^ -var_3.d) != var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<f32>, 31>();
    global1 = array<Struct_1, 17>();
    global4 = array<vec4<f32>, 31>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(88716u, ~abs(~global0[_wgslsmith_index_u32(u_input.d.x, 4u)])) & _wgslsmith_div_u32(~(~56387u), 33255u), 17u)];
    let var_1 = all(select(!(!func_1(vec2<f32>(666f, -1719f))), vec2<bool>(all(vec2<bool>(true, false)) | true, all(vec2<bool>(false, false))), true));
    global3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(max(10215u, 1u), 17948u, var_1), global0[_wgslsmith_index_u32(var_0.c, 4u)]), 4u)], _wgslsmith_mod_u32(20458u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 71468u)), ~u_input.d.xx)), abs(~_wgslsmith_mult_u32(var_0.b, 65829u)), _wgslsmith_dot_vec2_u32(u_input.a.zz, ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 1u), u_input.a.zz))), vec2<u32>(1u, ~214u));
}

