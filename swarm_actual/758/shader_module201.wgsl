struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 31179i), vec2<bool>(false, false), vec4<i32>(1i, 0i, -2862i, 13769i)), 1u, Struct_1(vec3<i32>(-9827i, 1i, 40731i), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -17264i, i32(-2147483648), 36216i))), Struct_2(Struct_1(vec3<i32>(1372i, -21510i, -44318i), vec2<bool>(true, true), vec4<i32>(-1i, -1i, i32(-2147483648), 2147483647i)), 0u, Struct_1(vec3<i32>(0i, -22536i, 11213i), vec2<bool>(true, true), vec4<i32>(-1126i, 1i, 32260i, 6299i))), Struct_2(Struct_1(vec3<i32>(5832i, 19015i, 0i), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 1617i, 1i, 13776i)), 13213u, Struct_1(vec3<i32>(-16362i, 0i, 2947i), vec2<bool>(true, true), vec4<i32>(i32(-2147483648), i32(-2147483648), 27319i, -42781i))), Struct_2(Struct_1(vec3<i32>(32988i, 1i, -2826i), vec2<bool>(true, true), vec4<i32>(65844i, -27283i, 0i, -32016i)), 18548u, Struct_1(vec3<i32>(40381i, 0i, 1i), vec2<bool>(false, false), vec4<i32>(2147483647i, 21634i, 0i, -21420i))), Struct_2(Struct_1(vec3<i32>(2147483647i, -44453i, 46705i), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 1i)), 65002u, Struct_1(vec3<i32>(1i, i32(-2147483648), 20057i), vec2<bool>(true, false), vec4<i32>(0i, 10972i, -1i, 32584i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, -4425i), vec2<bool>(false, true), vec4<i32>(2554i, 0i, i32(-2147483648), 0i)), 78208u, Struct_1(vec3<i32>(23843i, 36921i, 26702i), vec2<bool>(false, true), vec4<i32>(-291i, i32(-2147483648), -11266i, i32(-2147483648)))), Struct_2(Struct_1(vec3<i32>(-2605i, 2784i, -55494i), vec2<bool>(true, true), vec4<i32>(-20524i, -17843i, 0i, i32(-2147483648))), 4294967295u, Struct_1(vec3<i32>(59648i, 2147483647i, 0i), vec2<bool>(false, false), vec4<i32>(1i, -3374i, 14044i, 1i))), Struct_2(Struct_1(vec3<i32>(-967i, 2147483647i, 6104i), vec2<bool>(false, true), vec4<i32>(-39079i, 2147483647i, 42732i, 6013i)), 1u, Struct_1(vec3<i32>(-1i, 755i, 30468i), vec2<bool>(false, true), vec4<i32>(-1i, -30279i, 1i, -4537i))), Struct_2(Struct_1(vec3<i32>(1i, -3169i, i32(-2147483648)), vec2<bool>(true, true), vec4<i32>(18743i, -35518i, -1i, 2147483647i)), 0u, Struct_1(vec3<i32>(76177i, 4189i, -1i), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -34164i, 0i, -33583i))), Struct_2(Struct_1(vec3<i32>(-24430i, 19924i, 1i), vec2<bool>(false, false), vec4<i32>(-87893i, -30228i, i32(-2147483648), 1i)), 36767u, Struct_1(vec3<i32>(0i, 76630i, -27739i), vec2<bool>(false, false), vec4<i32>(-31172i, 30342i, -60266i, 65256i))), Struct_2(Struct_1(vec3<i32>(-18992i, -12215i, -11606i), vec2<bool>(true, true), vec4<i32>(20376i, -1i, 0i, -10017i)), 26053u, Struct_1(vec3<i32>(-7179i, 7960i, 0i), vec2<bool>(false, true), vec4<i32>(1i, -1i, -1i, -3286i))));

var<private> global2: array<bool, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(global0.b);
    var var_1 = _wgslsmith_add_i32(abs(u_input.d), global0.c.a.x);
    let var_2 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(1f, abs(2147483647i));
}

