struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: Struct_2 = Struct_2(29008i);

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<Struct_3, 26>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_3(vec4<i32>(70011i, _wgslsmith_mult_i32(~_wgslsmith_sub_i32(-1427i, global1.a), global1.a >> (global0[_wgslsmith_index_u32(1u, 1u)] % 32u)), ((global1.a << (0u % 32u)) & global1.a) << (~4294967295u % 32u), 9061i), 79986u, Struct_1(~(~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 45228u))), vec2<u32>(60186u, global0[_wgslsmith_index_u32(~reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)]), 1u)])), -u_input.a, Struct_1(max(abs(reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)]))), _wgslsmith_add_vec2_u32(vec2<u32>(40330u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41477u, 1u)], 1u)]), vec2<u32>(13964u, 1u))), firstTrailingBit(vec2<u32>(select(global0[_wgslsmith_index_u32(9048u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72019u, 1u)], 1u)], true), global0[_wgslsmith_index_u32(5587u, 1u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1580u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)]))));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, 576f, -2513f, -895f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(120f, -2196f, 216f, -223f), _wgslsmith_f_op_vec4_f32(vec4<f32>(947f, -1000f, 1509f, 538f) * vec4<f32>(179f, 1014f, -1572f, 490f)), true)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1396f, 1140f, 1081f))))));
    var var_3 = var_0.d.x;
    var var_4 = Struct_2(1i);
    return 1856f;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global2 = !vec3<bool>(false, true, !global2.x);
    global2 = !(!vec3<bool>(global2.x, ~38332u < ~global0[_wgslsmith_index_u32(4294967295u, 1u)], global2.x));
    global1 = Struct_2(global1.a & u_input.b);
    var var_0 = !any(!vec3<bool>(true, true, select(true, global2.x, false)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(175f + _wgslsmith_f_op_f32(-624f + -975f))))));
    return Struct_2(-(~25823i));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    global0 = array<u32, 1>();
    global1 = func_2(~(~(-vec4<i32>(global1.a, -2147483647i, global1.a, global1.a))) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 95599u, 39514u), ~vec4<u32>(97312u, 1u, 1u, 0u), vec4<u32>(5160u, arg_0, 1u, arg_0) & vec4<u32>(4294967295u, 0u, arg_0, 0u)) | _wgslsmith_clamp_vec4_u32(min(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 1u)], 1u)], arg_0, 0u, arg_0), vec4<u32>(global0[_wgslsmith_index_u32(0u, 1u)], 0u, 1u, 4294967295u)), vec4<u32>(1u, 1u, 4294967295u, 49340u) << (vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 83181u, global0[_wgslsmith_index_u32(0u, 1u)]) % vec4<u32>(32u)), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(40131u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], 25777u))) % vec4<u32>(32u)));
    let var_0 = i32(-1i) * -func_2(-vec4<i32>(global1.a, u_input.a.x, 1i, -16865i) >> (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0, 1u)], 16083u, 104025u) % vec4<u32>(32u))).a;
    var var_1 = func_2(~_wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 4577i, global1.a, -1i), vec4<i32>(1i, 19243i, var_0, u_input.a.x)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, global1.a, var_0), vec4<i32>(global1.a, 35265i, 2147483647i, global1.a)), vec4<i32>(global1.a, global1.a, -31939i, u_input.b))));
    let var_2 = min(select(vec4<u32>(firstLeadingBit(34526u), abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 88642u), vec2<u32>(arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)])), global0[_wgslsmith_index_u32(~0u, 1u)]), ~(~vec4<u32>(10221u, 50524u, global0[_wgslsmith_index_u32(0u, 1u)], arg_0)), global2.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(16100u, abs(1u), select(0u, arg_0, global2.x), 67101u), _wgslsmith_div_vec4_u32(vec4<u32>(45235u, global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u, global0[_wgslsmith_index_u32(49711u, 1u)]), firstTrailingBit(vec4<u32>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(48765u, 1u)], 2026u))), vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(arg_0, 1u)]), firstTrailingBit(1u), ~40538u, 16976u)), vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], ~arg_0, 1u, ~global0[_wgslsmith_index_u32(arg_0, 1u)]));
    return vec2<u32>(~(arg_0 ^ 0u) >> (~firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 1u)]) % 32u), min(~1u, (1u & var_2.x) & global0[_wgslsmith_index_u32(arg_0, 1u)])) | vec2<u32>(abs(~abs(arg_0)), select(abs(global0[_wgslsmith_index_u32(var_2.x, 1u)]) | (var_2.x >> (global0[_wgslsmith_index_u32(arg_0, 1u)] % 32u)), 4294967295u & ~var_2.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -492f), _wgslsmith_f_op_f32(-1000f * -603f), global2.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -642f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1241f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1860f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-562f, -235f), -1000f, _wgslsmith_f_op_f32(step(-1948f, 558f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(283f)), _wgslsmith_f_op_f32(sign(-373f))))));
    let var_1 = -330f;
    let var_2 = !select(vec4<bool>(true, !(!global2.x), true, global2.x), select(select(select(vec4<bool>(global2.x, false, false, false), vec4<bool>(true, global2.x, false, true), vec4<bool>(false, true, global2.x, true)), !vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, false)), select(select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, global2.x, false, true), false), !vec4<bool>(false, false, global2.x, true), global2.x), select(vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(global2.x, false, global2.x, true), select(vec4<bool>(false, true, global2.x, false), vec4<bool>(true, true, true, false), global2.x))), true & (var_1 <= _wgslsmith_div_f32(-1353f, var_1)));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(func_1(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48557u, 1u)], 1u)], 1u)])), countOneBits(vec2<u32>(0u, 42730u) << (vec2<u32>(global0[_wgslsmith_index_u32(38855u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]) % vec2<u32>(32u)))), 4294967295u >> (~global0[_wgslsmith_index_u32(2936u, 1u)] % 32u)) | 77880u;
    var var_4 = Struct_2(u_input.a.x);
    var var_5 = vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(9669u, 1u)], firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)], 10275u, global0[_wgslsmith_index_u32(0u, 1u)]), vec4<u32>(1u, 25223u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6161u, 1u)], 1u)], 14754u) ^ vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 0u, 0u, global0[_wgslsmith_index_u32(1u, 1u)])), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63975u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(874u, 1u)], 18537u)), vec4<u32>(global0[_wgslsmith_index_u32(29608u, 1u)], 51785u, 29797u, global0[_wgslsmith_index_u32(0u, 1u)]) | vec4<u32>(global0[_wgslsmith_index_u32(61108u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1406u, 1u)], 1u)], 28094u)))));
    let var_6 = Struct_1(var_5.yy, vec2<u32>(87342u, ~1u));
    global3 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~u_input.a.x ^ ~abs(1i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_4.a, u_input.a.x)), -1i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-1i, 2777i)), u_input.a))), func_1(1853u).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-135f)), -556f), (var_6.a >> (max(var_5.zy, min(var_6.a, var_6.a)) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(var_5.yy, var_5.zx), ~vec2<u32>(global0[_wgslsmith_index_u32(26828u, 1u)], var_5.x)), i32(-1i) * -1i);
}

