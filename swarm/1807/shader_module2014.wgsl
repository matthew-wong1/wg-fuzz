struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<u32>(1u, 75749u, 4423u, 4294967295u), -1i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 33731u, 1650u), -15072i), Struct_1(vec4<u32>(0u, 1u, 28301u, 3990u), -28032i), Struct_1(vec4<u32>(39482u, 21985u, 23799u, 0u), 0i), Struct_1(vec4<u32>(31478u, 52230u, 35289u, 39570u), 0i), Struct_1(vec4<u32>(0u, 38729u, 39088u, 89817u), -20157i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 67948u, 4294967295u), -1i), Struct_1(vec4<u32>(50861u, 66357u, 46811u, 110633u), i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), -31696i), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), i32(-2147483648)), Struct_1(vec4<u32>(25027u, 4294967295u, 24037u, 2266u), 26487i), Struct_1(vec4<u32>(5790u, 0u, 0u, 12990u), 0i), Struct_1(vec4<u32>(13234u, 1u, 4294967295u, 0u), 21254i), Struct_1(vec4<u32>(1u, 24217u, 4294967295u, 1u), 0i), Struct_1(vec4<u32>(50256u, 4294967295u, 13216u, 1031u), -29984i), Struct_1(vec4<u32>(1u, 1u, 64635u, 1u), 14409i), Struct_1(vec4<u32>(0u, 1u, 75833u, 1u), i32(-2147483648)), Struct_1(vec4<u32>(1u, 1u, 0u, 1u), -25864i), Struct_1(vec4<u32>(0u, 4294967295u, 16513u, 1040u), -1i), Struct_1(vec4<u32>(7036u, 18452u, 4294967295u, 0u), 7016i));

var<private> global1: array<f32, 14> = array<f32, 14>(666f, 348f, 1000f, -876f, -1744f, 1000f, -1710f, 275f, 297f, 1071f, -1286f, -364f, 607f, -1716f);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(0u, 36705u, 1u, 4827u), -19603i);

var<private> global3: vec4<bool>;

var<private> global4: array<f32, 20> = array<f32, 20>(-1000f, -851f, 227f, -543f, 1000f, -1157f, -361f, -1000f, -918f, -1491f, -135f, 676f, -404f, -660f, -1211f, 754f, -186f, 738f, 331f, 1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = vec2<bool>(_wgslsmith_mult_u32(global2.a.x, min(countOneBits(u_input.a), global2.a.x)) <= global2.a.x, global3.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.a.x, 20u)] - global4[_wgslsmith_index_u32(114531u, 20u)]), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a, 14u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-870f, global1[_wgslsmith_index_u32(1u, 14u)]) + vec2<f32>(global4[_wgslsmith_index_u32(u_input.a, 20u)], global4[_wgslsmith_index_u32(global2.a.x, 20u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(70503u, 20u)])))))))));
    global0 = array<Struct_1, 20>();
    var var_2 = _wgslsmith_div_i32(u_input.c.x, global2.b);
    global4 = array<f32, 20>();
    return 2147483647i;
}

fn func_3(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(global2.a, vec4<u32>(countOneBits(4294967295u), u_input.b, _wgslsmith_clamp_u32((60862u | global2.a.x) >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(global2.a.yyy), firstLeadingBit(global2.a.yxy)), select(~u_input.a, global2.a.x, global3.x)), firstTrailingBit(3961u)));
    return global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(0u | (global2.a.x << (_wgslsmith_add_u32(var_0.x, u_input.b) % 32u)), 1u), ~global2.a.x, global3.x), 20u)];
}

fn func_1() -> u32 {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec4_u32(global2.a, ~vec4<u32>(1u, global2.a.x, 1u, 1u)) & global2.a);
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 20u)];
    var_1 = func_3(_wgslsmith_div_i32(~global2.b, _wgslsmith_clamp_i32(global2.b, _wgslsmith_div_i32(~(-1i), -13960i), max(func_2(), -var_1.b))));
    global0 = array<Struct_1, 20>();
    var var_2 = Struct_1(global2.a, var_1.b);
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global3.x;
    let var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(40897u, global2.a.x), ~func_1(), 48791u)), 20u)];
    var var_2 = Struct_1(vec4<u32>(global2.a.x | ~1941u, 95325u << (min(~25105u, 3419u >> (global2.a.x % 32u)) % 32u), var_1.a.x, ~_wgslsmith_div_u32(var_1.a.x, 1u)), -11243i);
    var var_3 = func_3((func_2() & _wgslsmith_mod_i32(var_1.b & -34704i, -2147483647i)) << (abs(_wgslsmith_add_u32(50346u, 0u << (0u % 32u))) % 32u));
    let var_4 = global0[_wgslsmith_index_u32(firstTrailingBit(77244u), 20u)];
    let var_5 = _wgslsmith_mult_vec3_i32(vec3<i32>(func_2(), 20163i, u_input.c.x), vec3<i32>(-1i, -6652i, u_input.c.x));
    var var_6 = ~((_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.b, var_4.b), vec3<i32>(1i, 1i, -35151i) >> (global2.a.xzw % vec3<u32>(32u))) << (_wgslsmith_dot_vec3_u32(~global2.a.wyy, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4809u, u_input.a), vec3<u32>(global2.a.x, 34754u, u_input.b))) % 32u)) << (min(4294967295u, ~(100247u >> (var_2.a.x % 32u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.x, _wgslsmith_clamp_vec2_u32(~(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 10040u), var_1.a.xz) << (var_4.a.zw % vec2<u32>(32u))), firstTrailingBit(max(firstLeadingBit(var_1.a.yz), firstTrailingBit(vec2<u32>(30458u, 21351u)))), ~var_1.a.ww), ~var_1.a.x, 0u, vec2<i32>(var_4.b, -49281i) >> (min(vec2<u32>(~23676u, ~2059u), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_3.a.wy, vec2<u32>(4554u, 0u)), ~var_4.a.xx)) % vec2<u32>(32u)));
}

