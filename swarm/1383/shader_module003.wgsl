struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<u32, 14>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec3<i32> {
    global3 = array<u32, 14>();
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49707u, 14u)], 14u)], 14u)], 76934u, global3[_wgslsmith_index_u32(0u, 14u)], 0u), vec4<u32>(1u, 42342u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], global3[_wgslsmith_index_u32(1u, 14u)])), ~vec4<u32>(27130u, 19489u, global3[_wgslsmith_index_u32(4884u, 14u)], 4294967295u)), reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4979u, 14u)], 14u)])), 16u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(149f, -1010f, -1000f, -778f)))))));
    let var_1 = Struct_1(519f, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global3[_wgslsmith_index_u32(0u, 14u)], 1892u, global3[_wgslsmith_index_u32(0u, 14u)]), vec3<u32>(4294967295u, 32859u, var_0.a.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(23766u, global3[_wgslsmith_index_u32(var_0.a.b, 14u)], global3[_wgslsmith_index_u32(3471u, 14u)]), vec3<u32>(44796u, 56453u, var_0.a.b))), var_0.a.b) << (select(32309u, var_0.a.b, false) % 32u), var_0.a.c);
    var var_2 = var_1.c;
    global2 = array<Struct_1, 16>();
    return vec3<i32>(~(~(-25272i)), ~(-32209i | global1.x), global1.x) >> (vec3<u32>(global3[_wgslsmith_index_u32(var_1.b, 14u)], ~_wgslsmith_mult_u32(var_0.a.b, global3[_wgslsmith_index_u32(0u, 14u)]), 0u) % vec3<u32>(32u));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2290f - -2780f)) * -580f), 4294967295u & ~_wgslsmith_clamp_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 0u), _wgslsmith_f_op_f32(-398f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -964f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, -1112f, 582f, 113f) + vec4<f32>(-203f, 185f, 1398f, -1143f)))));
    var var_1 = ~abs(~_wgslsmith_add_vec3_i32(func_3(), select(vec3<i32>(global1.x, -1i, u_input.b), vec3<i32>(u_input.b, -9383i, 29230i), true)));
    global2 = array<Struct_1, 16>();
    var var_2 = select(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_3 = any(!vec3<bool>(!select(var_2.x, var_2.x, var_2.x), select(true, select(true, false, var_2.x), var_2.x), any(vec4<bool>(true, var_2.x, var_2.x, var_2.x)) != any(vec4<bool>(false, var_2.x, var_2.x, var_2.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a, -1000f))), _wgslsmith_f_op_f32(-var_0.a.a))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + 886f) - _wgslsmith_f_op_f32(-var_0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-203f, var_0.a.a) - _wgslsmith_f_op_f32(trunc(-1589f))))));
}

fn func_4(arg_0: f32) -> f32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(86070u, 16u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(2487f)), arg_0, _wgslsmith_f_op_f32(-533f * -512f), _wgslsmith_f_op_f32(arg_0 - arg_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1169f, -2483f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, arg_0, arg_0))))));
    var var_1 = ~(abs(firstTrailingBit(vec4<u32>(var_0.a.b, var_0.a.b, 1u, 4294967295u))) ^ vec4<u32>(reverseBits(var_0.a.b), _wgslsmith_mult_u32(var_0.a.b, 64406u), 4294967295u, 1834u)) | ~((_wgslsmith_mult_vec4_u32(vec4<u32>(27778u, var_0.a.b, global3[_wgslsmith_index_u32(var_0.a.b, 14u)], var_0.a.b), vec4<u32>(var_0.a.b, 52178u, var_0.a.b, global3[_wgslsmith_index_u32(45558u, 14u)])) & vec4<u32>(7229u, 50489u, 34123u, 0u)) << (vec4<u32>(13646u << (0u % 32u), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 34945u, 5539u), 14u)], 1u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]) % vec4<u32>(32u)));
    var var_2 = vec3<i32>(u_input.a, ~(countOneBits(global1.x) << (0u % 32u)), u_input.a);
    let var_3 = any(select(vec2<bool>(true, true), !vec2<bool>(true, var_1.x == var_1.x), true));
    let var_4 = false;
    return _wgslsmith_f_op_f32(max(arg_0, -396f));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(abs(0i), arg_0), ~(-7895i), 0i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-159f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(287f * -1846f) + _wgslsmith_f_op_f32(func_2()))))));
    var var_2 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 16u)];
    global1 = min(~vec3<i32>(u_input.a, var_0.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(global1.x, -175i), abs(arg_0))), (~(vec3<i32>(global1.x, arg_0, 2147483647i) & vec3<i32>(global1.x, arg_0, 0i)) << ((~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], 26165u, 4294967295u) & ~vec3<u32>(var_2.b, var_2.b, 60167u)) % vec3<u32>(32u))) & vec3<i32>(countOneBits(1i), _wgslsmith_mult_i32(global1.x, _wgslsmith_sub_i32(1i, var_0.x)), -(~(-38318i))));
    let var_3 = global2[_wgslsmith_index_u32(69314u, 16u)];
    return select(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec2<bool>(!(all(vec3<bool>(false, true, false)) == true), true), !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(func_1(u_input.a), select(vec2<bool>(true, true), func_1(_wgslsmith_add_i32(20440i, -1i)), vec2<bool>(true, true)), vec2<bool>(true, true)), func_1(0i), vec2<bool>(true, any(vec3<bool>(true, true, true))));
    global0 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(44156u, global3[_wgslsmith_index_u32(65011u, 14u)])) << (1u % 32u)), 14u)];
    global2 = array<Struct_1, 16>();
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_2 = select(!select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)), !vec4<bool>(var_0.x, true, false, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x)), select(vec4<bool>(select(var_0.x, all(vec4<bool>(false, var_0.x, false, true)), var_0.x & var_0.x), all(func_1(global1.x)), false, false), vec4<bool>(false, false, select(false, var_0.x && true, var_0.x), var_0.x), var_1.a <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true);
    global1 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 37455i, 2147483647i), vec3<i32>(6763i, -2147483647i, -30885i)), _wgslsmith_sub_vec3_i32(select(vec3<i32>(-88180i, global1.x, u_input.b), vec3<i32>(global1.x, -30363i, -14775i), var_2.zzz), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, global1.x, -28318i), vec3<i32>(1i, u_input.a, -27686i))), ~vec3<i32>(u_input.b, -1i, global1.x)) >> (countOneBits(~firstLeadingBit(vec3<u32>(31140u, global3[_wgslsmith_index_u32(var_1.b, 14u)], 0u))) % vec3<u32>(32u)));
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-vec2<i32>(global1.x, 4542i) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, 59111u), vec2<u32>(var_1.b, 30298u)) % vec2<u32>(32u)), global1.xx));
}

