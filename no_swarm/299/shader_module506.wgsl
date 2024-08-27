struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -11877i), vec4<i32>(-1i, 24788i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(0i, i32(-2147483648), -1265i, -1i), vec4<i32>(0i, -16336i, 31849i, i32(-2147483648))), Struct_1(vec4<i32>(897i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, -71799i, -6406i, -3954i)), Struct_1(vec4<i32>(0i, -60884i, 21605i, -32374i), vec4<i32>(-1i, 51021i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(16638i, 2147483647i, 0i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -34229i, 11934i)), Struct_1(vec4<i32>(-2445i, 50460i, 2147483647i, 0i), vec4<i32>(-24201i, 2147483647i, 0i, 0i)), Struct_1(vec4<i32>(13999i, -1i, 62374i, 52448i), vec4<i32>(0i, 0i, -48643i, -10741i)), Struct_1(vec4<i32>(15186i, -1i, 1i, 23504i), vec4<i32>(0i, i32(-2147483648), -1i, -41256i)), Struct_1(vec4<i32>(-42635i, 34284i, i32(-2147483648), 3211i), vec4<i32>(-1i, i32(-2147483648), 33336i, 1i)), Struct_1(vec4<i32>(-73953i, -25341i, 0i, 0i), vec4<i32>(-1768i, 9622i, -1i, 38595i)), Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), 15644i), vec4<i32>(-28453i, -22545i, -3124i, 0i)), Struct_1(vec4<i32>(1i, -1i, 93654i, i32(-2147483648)), vec4<i32>(2147483647i, -32985i, -4519i, 34026i)), Struct_1(vec4<i32>(0i, 0i, 22575i, i32(-2147483648)), vec4<i32>(17061i, 1i, -1i, 1i)), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -1i), vec4<i32>(-1912i, 2147483647i, 15147i, 0i)), Struct_1(vec4<i32>(10194i, 31144i, 72837i, 2147483647i), vec4<i32>(-56465i, 53747i, i32(-2147483648), -28662i)), Struct_1(vec4<i32>(59605i, -15246i, 10937i, 49698i), vec4<i32>(-46779i, -8496i, 1i, -39408i)), Struct_1(vec4<i32>(i32(-2147483648), 42811i, 5753i, -1i), vec4<i32>(653i, -16524i, 1i, -5928i)), Struct_1(vec4<i32>(1i, -1491i, 1i, -55145i), vec4<i32>(69399i, i32(-2147483648), i32(-2147483648), -31244i)), Struct_1(vec4<i32>(-46639i, 1i, -1244i, 11383i), vec4<i32>(-1i, -1i, 28471i, -14880i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -4572i, 5740i), vec4<i32>(1i, i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(-519i, 21580i, 28128i, -26106i), vec4<i32>(49753i, -18019i, 69405i, -33514i)), Struct_1(vec4<i32>(2147483647i, -30306i, 71991i, 2147483647i), vec4<i32>(51293i, 21949i, 43386i, 62575i)), Struct_1(vec4<i32>(-38442i, -4316i, -1i, 0i), vec4<i32>(0i, 82300i, 2147483647i, 64277i)));

var<private> global1: array<vec4<bool>, 24>;

var<private> global2: array<f32, 22>;

var<private> global3: Struct_1;

var<private> global4: vec4<i32> = vec4<i32>(35525i, 2147483647i, i32(-2147483648), -1i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_1.b.x;
    let var_1 = u_input.a;
    return min(var_1, var_1);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = Struct_1(arg_2.b, abs(var_0.a));
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(32082u, 22u)]))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4568u, 22u)] + global2[_wgslsmith_index_u32(4294967295u, 22u)])))), _wgslsmith_f_op_f32(578f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(784u, 22u)], global2[_wgslsmith_index_u32(11431u, 22u)])))))) != 1184f;
    var_2 = ~(~u_input.a) != 8218u;
    return Struct_1(-min((vec4<i32>(-5540i, 2147483647i, 2147483647i, 1i) >> (vec4<u32>(u_input.a, 1u, u_input.a, 1u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a, 0u, 1u, u_input.a) % vec4<u32>(32u)), -(~vec4<i32>(-2147483647i, 54898i, var_1.a.x, 27074i))), arg_0 >> (~(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))) % vec4<u32>(32u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = !(!all(vec4<bool>(true, true, true, true)));
    let var_1 = func_2(select(vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(global4.yyy, vec3<i32>(global3.b.x, 2147483647i, 1i))), arg_0.x, min(countOneBits(global3.a.x), arg_3.b.x), (global4.x << (0u % 32u)) ^ 898i), vec4<i32>(global3.a.x, -_wgslsmith_div_i32(global3.a.x, arg_1.b.x), arg_1.b.x, -76213i), !(false || var_0) || all(global1[_wgslsmith_index_u32(~4294967295u, 24u)])), global4.x, Struct_1(vec4<i32>(global3.a.x, arg_1.a.x, arg_1.a.x, max(global3.a.x, func_2(global3.b, global3.b.x, Struct_1(vec4<i32>(arg_3.b.x, -1i, -1i, -17507i), vec4<i32>(global4.x, -1i, arg_0.x, 1i)), arg_3.b.x).a.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~global3.b, vec4<i32>(arg_3.a.x, 8529i, -2147483647i, 25026i) ^ vec4<i32>(2147483647i, 21329i, -29865i, 1i)), abs(global3.b) << ((vec4<u32>(1u, 25488u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), ~arg_3.a)), min(arg_2 ^ arg_0.x, min(arg_2, 0i)) >> (1u % 32u));
    global1 = array<vec4<bool>, 24>();
    let var_2 = ~(~(~u_input.a));
    var var_3 = vec2<i32>(8082i, ~arg_3.b.x);
    return ~reverseBits(select(~vec4<u32>(1002u, u_input.a, 0u, 4294967295u), vec4<u32>(var_2, var_2, 4294967295u, 30732u) ^ vec4<u32>(u_input.a, var_2, 4294967295u, 7467u), global1[_wgslsmith_index_u32(abs(var_2), 24u)]) ^ _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_2, var_2, 4294967295u), vec4<u32>(u_input.a, 27694u, u_input.a, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 40223u, u_input.a), vec4<u32>(1u, var_2, var_2, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -485f), global2[_wgslsmith_index_u32(abs(4294967295u), 22u)]))));
    var var_1 = max(vec4<u32>(_wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(u_input.a, 23230u)), u_input.a, countOneBits(_wgslsmith_div_u32(u_input.a, 41791u)), _wgslsmith_add_u32(~0u, 35395u & u_input.a)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(46147u, ~u_input.a, func_1(var_0.x, Struct_1(vec4<i32>(global4.x, -27597i, 2147483647i, -45672i), vec4<i32>(-24254i, 1i, -1i, -1i)), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], -1000f), global0[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_add_u32(u_input.a, 58378u)), reverseBits(~vec4<u32>(0u, 1u, 4294967295u, u_input.a))), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), ~func_3(global3.a.yy, func_2(global3.b, -73983i, Struct_1(vec4<i32>(0i, -68183i, 67954i, 1i), global3.a), -14648i), 60685i, global0[_wgslsmith_index_u32(u_input.a, 23u)])));
    global4 = abs(select(max(global3.a, -abs(global3.b)), _wgslsmith_sub_vec4_i32(global3.b, global3.b), all(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), any(global1[_wgslsmith_index_u32(var_1.x, 24u)])))));
    let var_2 = Struct_1(~global3.b, ~(firstTrailingBit(vec4<i32>(global3.b.x, global3.b.x, global4.x, global4.x) >> (vec4<u32>(u_input.a, 1u, 77283u, 1u) % vec4<u32>(32u))) ^ select(global3.a, vec4<i32>(37778i, global4.x, 47613i, global3.b.x), true)));
    let var_3 = func_2(~min(vec4<i32>(-1i, abs(-2147483647i), -18832i, -global3.a.x), firstLeadingBit(var_2.b)), countOneBits(-global3.b.x), func_2(var_2.a, min(-var_2.a.x, -var_2.b.x) >> (_wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec3_u32(var_1.yxx, var_1.ywy)) % 32u), Struct_1(global3.b, ~(vec4<i32>(global3.a.x, var_2.b.x, var_2.a.x, -2147483647i) ^ global3.a)), 1i), 0i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -489f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4), vec4<i32>(select(~(-1i), ~(-21551i), var_1.x <= var_1.x), -39440i, -20618i, _wgslsmith_dot_vec2_i32(~global4.wy, -vec2<i32>(-19835i, -28793i))) ^ ~global3.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1286f, var_0.x) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(f32(-1f) * -386f))), _wgslsmith_f_op_f32(-var_4))), _wgslsmith_mod_u32(func_1(_wgslsmith_f_op_f32(-606f - _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a, 22u)]))), Struct_1(_wgslsmith_mult_vec4_i32(global3.a, var_2.b), vec4<i32>(global4.x, -2147483647i, -53263i, var_2.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 281f)), func_2(_wgslsmith_sub_vec4_i32(global3.b, vec4<i32>(global4.x, -1i, -2147483647i, global3.a.x)), 10847i, Struct_1(vec4<i32>(global4.x, global3.b.x, -1i, 2147483647i), vec4<i32>(global4.x, global4.x, var_2.b.x, global3.b.x)), 0i)), var_1.x));
}

